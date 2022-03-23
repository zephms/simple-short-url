# simple-short-url

a simple short url service, using mysql and flask

## usage

download:

``` sh
git clone https://github.com/zephms/simple-short-url.git
cd simple-short-url
```

configure your mysql according to `./prepare/mysql.sql`

modify the configuration file according to your mysql

``` sh
vi ./src/config.py
```

install python libraries

``` sh
pip install flask
pip install pymysql
```

try to run it!

``` sh
python3 ./src/main.py
```

deploy by nginx

``` xml
server {
    listen 80;
    server_name s.acbs.top;
    location / {
        proxy_pass http://127.0.0.1:6014;
    }
}
```
