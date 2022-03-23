
from  flask import Flask, request,redirect,render_template
import time
import random
# import hashlib
import  time
import py_10_to_62
import pymysql
from flask import send_file
import config


def mysql_conn():
    conn=pymysql.connect(host=config.DB_HOST,port=config.DB_PORT,user=config.DB_USER_NAME,password=config.DB_PASSWORD,database=config.DB_DATABASE,charset='utf8')
    return conn

# 创建应用
app = Flask(__name__)
conn=mysql_conn()

# 定义路由
@app.route('/')
def url_root():
    return render_template("index.html")
# 定义路由
@app.route('/favicon.ico')
def url_favicon():
    return 'ok'

#定义路由
@app.route('/weixinTemplate')
def  weixinTemplate():
    pass

@app.route('/js/jquery.min.js', methods=['post', 'get'])
def jq():
    return send_file(config.SRC_DIR + "/js/jquery.min.js")


# Post请求
@app.route('/create_shorturl', methods=['post', 'get'])
# 默认只接收GET请求，通过methods指定接收的请求方式
def create_shorturl():
    long_url = request.form['url'].encode(encoding='utf-8')
    '''
    print(long_url)
    md5_longurl=hashlib.md5()
    md5_longurl.update(long_url)
    m_url =md5_longurl.hexdigest()
    print(m_url)
    '''
    random_num = random.randint(1,20000)
    random_shu = random.randint(1,20000000)
    int_num= int(time.time())
    int_num=(int_num + random_shu) // random_num
    shot_url=py_10_to_62.changeBase(int_num,62)
    print(shot_url)
    sql='''
        insert into xj_dwz (time_date,short_url,long_url)
        values
        (%s,%s,%s)
    '''
    # conn=mysql_conn()
    curs =conn.cursor()#获取游標
    curs.execute(sql,[int_num,shot_url,long_url])
    conn.commit()
    curs.close()
    # conn.close()
    return render_template('short_url.html',shot_url_ht=shot_url)

# REST风格参数
@app.route('/<name>')
def test_rest(name):
    print(name)
    sql=f'''
        select  long_url from   xj_dwz where short_url in ('{name}')
    '''
    # conn=mysql_conn()
    curs=conn.cursor(cursor=pymysql.cursors.DictCursor)
    longs=curs.execute(sql)
    print(longs)
    if longs == 0 :
        return render_template('404.html')
    one = curs.fetchone()
    print(one)
    long_url=one['long_url']
    curs.close()
    # conn.close()
    return redirect(long_url,code=301)

if __name__ == '__main__':
    app.run(port=config.FLASK_PORT, debug=config.FLASK_DEBUG_MODE)
