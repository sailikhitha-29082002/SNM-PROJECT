from flask import Flask,flash,request,render_template,redirect,url_for,session,send_file
import mysql.connector
from otp import genotp
from cmail import sendmail
from stoken import encode,decode
from flask_session import Session
from io import BytesIO
import flask_excel as excel
import re
app=Flask(__name__)#current module of path
app.config['SESSION_TYPE']='filesystem'
app.secret_key='aswitha@2000'
mydb=mysql.connector.connect(host='localhost',user='root',password='admin',db='snmproject')
Session(app)
excel.init_excel(app)
@app.route('/')
def home():
    return render_template('welcome.html')
@app.route('/create',methods=['GET','POST'])
def create():
    if request.method=='POST':
        print(request.form)
        user_id=request.form['user_id']
        username=request.form['username']
        email=request.form['email']
        password=request.form['password']
        cpassword=request.form['confirmpassword']
        cursor=mydb.cursor()
        cursor.execute('select count(useremail) from users where useremail=%s',[email])
        result=cursor.fetchone()
        print(result)
        if result[0]==0:
            gotp=genotp()
            udata={'username':username,'usermail':email,'pword':password,'otp':gotp}
            print(gotp)
            subject='OTP for Simple Notes Manager'
            body=f'otp for registration of Simple Notes Manager{gotp}'
            sendmail(to=email,subject=subject,body=body)
            flash('OTP has to given mail')
            return redirect(url_for('gotp',enudata=encode(data=udata)))
        elif result[0]>0:
            flash('OTP has to given Mail')
            return redirect(url_for('login'))
        else:
            return 'Something Wrong'
    return render_template('create.html')
@app.route('/otp/<enudata>',methods=['GET','POST'])
def gotp(enudata):
    if request.method=='POST':
        uotp=request.form['otp']
        try:
            dudata=decode(data=enudata)    #{'username':username,'usermail':uemail,'pword:password,'otp':gotp}
        except Exception as e:
            print(e)
            return 'something went wrong'
        else:
            print(dudata['otp'][1:])
            print(uotp)
            if dudata['otp'][1:]==uotp:
                cursor=mydb.cursor()
                cursor.execute('insert into users(username,useremail,password) values(%s,%s,%s)',[dudata['username'],dudata['usermail'],dudata['pword']])
                mydb.commit()
                cursor.close()
                # flash('Registration successfull')
                return redirect(url_for('login'))
            else:
                return 'OTP was wrong pls register again'
    return render_template('otp.html')
@app.route('/login',methods=["POST","GET"])
def login():
    if request.method=='POST':
        uemail=request.form['email']
        pword=request.form['password']
        cursor=mydb.cursor(buffered=True) 
        cursor.execute('select count(useremail)from users where useremail=%s',[uemail])
        bdata=cursor.fetchone() #(1,) or (0,)
        if bdata[0]==1:
            cursor.execute('select password from users where useremail=%s',[uemail])
            bpassword=cursor.fetchone() #(0x3131310000000000000)
            if pword==bpassword[0].decode('utf-8'):
                print('------------------------------------------------------------------------------')
                print(session)
                session['user']=uemail
                print(session)
                return redirect(url_for('dashboard'))
            else:
                flash('password was wrong')
                return redirect(url_for('login'))
        elif bdata[0]==0:
            flash('Email not existed')
            return redirect(url_for('create'))
        else:
            return 'something went wrong'                
    return render_template('login.html') 
@app.route('/dashboard')
def dashboard():
    return render_template('dashboard.html')   
@app.route('/addnotes',methods=['GET','POST'])
def addnotes():
    if request.method=='POST':
        title=request.form['title']
        description=request.form['desc']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select userid from users where useremail=%s',[session.get('user')])
        uid=cursor.fetchone()
        if uid:
            try:
               cursor.execute('insert into notes(title,ndescription,userid)values(%s,%s,%s)',[title,description,uid[0]])
               mydb.commit()
               cursor.close()
            except mysql.connector.errors.IntegrityError:
                flash('Duplicate Title Entery')
                return render_template('dashboard.html')   
            except mysql.connector.errors.ProgrammingError:
                flash('could not add notes')
                print(mysql.connector.errors.ProgrammingError)
                return render_template('dashboard.html')   
            else:
                flash('Notes added successfully')
                return redirect(url_for('dashboard'))   
        else:
            return 'something went wrong'
    return render_template('addnotes.html')
@app.route('/viewallnotes')
def viewallnotes():
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from users where useremail=%s',[session.get('user')])
            uid=cursor.fetchone() #(1,)
            cursor.execute('select nid,title,create_at from notes where userid=%s',[uid[0]])
            ndata=cursor.fetchall() #[1,'python','2024-12-16 11:14:25',),(2,'python','2024-12-16 11:14:53',)]
        except Exception as e:
            print(e)
            flash('no data found')
            return redirect(url_for('dashboard'))
        else:
            return render_template('viewallnotes.html',ndata=ndata)     
@app.route('/viewnotes/<nid>')  
def viewnotes(nid):
    print(nid)
    try:
       cursor=mydb.cursor(buffered=True)
       cursor.execute('select * from notes where nid=%s',[nid])
       ndata=cursor.fetchall()
    except Exception as e:
        print(e)
        flash('NO data found')
        return redirect(url_for('dashboard'))
    else:
        return render_template('viewnotes.html',ndata=ndata)    
@app.route('/updatenotes/<nid>',methods=['GET','POST'])
def updatenotes(nid):
    cursor=mydb.cursor(buffered=True)
    cursor.execute('select * from notes where nid=%s',[nid])
    ndata=cursor.fetchone()
    if request.method=='POST':
        title=request.form['title']
        description=request.form['desc']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('update notes set title=%s,ndescription=%s where nid=%s',[title,description,nid])
        mydb.commit()
        cursor.close()
        flash('Notes updated successfully')
        return redirect(url_for('viewnotes',nid=nid))
    return render_template('updatenotes.html',ndata=ndata)
@app.route('/deletenotes/<nid>')
def deletenotes(nid):
    try:
        cursor=mydb.cursor(buffered=True)
        cursor.execute('delete from notes where nid=%s',[nid])
        mydb.commit()
        cursor.close()
        flash('notes deleted succesfully')
    except Exception as e:
        print(e)
        flash('could not delete notes')
        return redirect(url_for('viewallnotes'))
    else:
        flash('Notes deleted successfully')    
        return redirect(url_for('viewallnotes'))
@app.route('/uploadfile',methods=['GET','POST'])
def  uploadfile():
    if request.method=='POST':
        filedata=request.files['file']
        fname=filedata.filename
        fdata=filedata.read()
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from users where useremail=%s',[session.get('user')])
            uid=cursor.fetchone()
            cursor.execute('insert into filedata(filename,fdata,added_by)values(%s,%s,%s)',[fname,fdata,uid[0]])
            mydb.commit()
        except Exception as e:
            print(e)
            flash('file couldnot upload')
            return redirect(url_for('dashboard'))
        else:
            flash('file uploaded sucessfully')
            return redirect(url_for('dashboard'))
            # print(filedata)
            # print(filedata.read())
    return render_template('upload.html')   

@app.route('/viewallfiles')
def viewallfiles():
    try:
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select userid from users where useremail=%s',[session.get('user')])
        uid=cursor.fetchone()
        cursor.execute('select fid,filename,created_at from filedata where added_by=%s',[uid[0]])
        fdata=cursor.fetchall() 
        print(fdata)
    except Exception as e:
        print(e)
        flash('no data found')
        return redirect(url_for('dashboard'))
    else:
        return render_template('allfiles.html',fdata=fdata)

@app.route('/viewfile/<fid>')
def viewfile(fid):
    try:
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select filename,fdata from filedata where fid=%s',[fid])
        fdata=cursor.fetchone() # (1,python,'jhgvb',2024-12-14 12:37:18)
        bytes_data=BytesIO(fdata[1])
        return send_file(bytes_data,download_name=fdata[0],as_attachment=False)
    except Exception as e:
        print(e)
        flash('cannot open file')
        return redirect(url_for('dashboard'))

@app.route('/deletefile/<fid>')
def deletefile(fid):
    try:
        cursor=mydb.cursor(buffered=True)
        cursor.execute('delete from filedata where fid=%s',[fid])
        mydb.commit()
        cursor.close()
    except Exception as e:
        print(e)
        flash('could not delete file')
        return redirect(url_for('viewallfiles'))
    else:
        flash('file deleted succesfully')
        return redirect(url_for('viewallfiles'))

@app.route('/downloadfile/<fid>')
def downloadfile(fid):
    try:
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select filename,fdata from filedata where fid=%s',[fid])
        fdata=cursor.fetchone() # (1,python,'jhgvb',2024-12-14 12:37:18)
        bytes_data=BytesIO(fdata[1])
        return send_file(bytes_data,download_name=fdata[0],as_attachment=True)
    except Exception as e:
        print(e)
        flash('cannot open file')
        return redirect(url_for('dashboard'))

@app.route('/d=getexceldata')
def getexceldata():
    if session.get('user'):
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from users where useremail=%s',[session.get('user')])
            uid=cursor.fetchone()
            cursor.execute('select nid,title,ndescription,create_at from notes where userid=%s',[uid[0]])
            ndata=cursor.fetchall()
        except Exception as e:
            print(e)
            flash('no data found')
            return redirect(url_for('dashboard'))
        else:
            array_data=[list(i) for i in ndata]
            print('--------------------------------',array_data)
            columns=['Notesid','Title','content','created_time']
            array_data.insert(0,columns)
            print("array:",array_data)
            # print("data:",excel.make_response_from_array(array_data,'xlsx'))
            return excel.make_response_from_array(array_data,'xlsx',file_name='notesdata')
            
    else:
        return redirect(url_for('welcome'))
    

@app.route('/search',methods=['GET','POST'])
def search():
    if session.get('user'):
        try:
            if request.method=='POST':
                sdata=request.form['sname']
                strg=['A-Za-z0-9']
                pattern=re.compile(f'^{strg}',re.IGNORECASE)
                if (pattern.match(sdata)):
                    cursor=mydb.cursor(buffered=True)
                    cursor.execute('select * from notes where nid like %s or title like %s or ndescription like %s or create_at like %s',[sdata+'%',sdata+'%',sdata+'%',sdata+'%'])
                    sdata=cursor.fetchall()
                    cursor.close()
                    return render_template('dashboard.html',sdata=sdata)
                else:
                    flash('no data found')
                    return redirect(url_for('dashboard'))
            else:
                return redirect(url_for('dashboard'))
        except Exception as e:
            print(e)
            flash('Cantfind anything')
            return redirect(url_for('login'))
    else:
        return redirect(url_for('login'))       

@app.route('/logout')
def logout():
    if session.get('user'):
        session.pop('user')
        return redirect(url_for('home'))
    else:
        redirect(url_for('login'))
          
app.run(use_reloader=True,debug=True)