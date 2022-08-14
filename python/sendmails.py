#!/usr/bin/python
#coding:utf8
import os,sys
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
# 引入smtplib和MIMEText
from time import sleep
from email.header import Header
import pymysql
import requests
import time
import xlwt

def sentemail():
    msg = MIMEMultipart()
    host = 'smtp.163.com'
    # 设置发件服务器地址
    port = 465
    # 设置发件服务器端口号。注意，这里有SSL和非SSL两种形式，现在一般是SSL方式
    sender = '13638602636@163.com'
    # 设置发件邮箱，一定要自己注册的邮箱
    pwd = 'Passw0rdsasldaskdjsaldjlksadj'
    # 设置发件邮箱的授权码密码，根据163邮箱提示，登录第三方邮件客户端需要授权码
    #receiver = '13638602636@163.com'
    receiver = '346487106@qq.com'
    # 设置邮件接收人，可以是QQ邮箱
    body = '请查看附件!'
    # 设置邮件正文，这里是支持HTML的
    #msg = MIMEText(body,'html','utf-8')
    msg.attach(MIMEText(body,'plain','utf-8'))
    # 设置正文为符合邮件格式的HTML内容
    msg['subject'] = Header('数据统计','utf-8')
    # 设置邮件标题
    msg['from'] = sender
    # 设置发送人
    msg['to'] = receiver

    #添加附件
    att1 = MIMEText(open(r'baobiao.xls','rb').read(),'base64','utf-8')
    att1["Content-Type"] = 'application/octet-stream'
    att1["Content-Disposition"] = 'attachment;filename="baobiao.xls"'
    msg.attach(att1)
    # 设置接收人
    try:
        s = smtplib.SMTP_SSL(host, port)
        # 注意！如果是使用SSL端口，这里就要改为SMTP_SSL
        s.login(sender, pwd)
        # 登陆邮箱
        s.sendmail(sender, receiver.split(','), msg.as_string(),'utf-8')
        s.quit()
        # 发送邮件！
        print ('Done.sent email success')
    except smtplib.SMTPException:
        print ('Error.sent email fail')


def conMysql():
    conn = pymysql.connect(
        host='47.110.84.xx',
        user='dbname',
        password='2V7qxFT7aLUlR11eoKrbSwNzj',
        db='dbname',
        port=3306,
        charset='utf8'
    )
    cur = conn.cursor()
    sql = '''
    SELECT
	t1.id,
	t1.user_name AS 姓名,
	t1.mobile_number AS 联系电话,
	t1.native_address AS 家庭所在地,
	t1.community_name AS 小区名称,
	-- t1.collect_time AS 时间,
	t2.body_situation AS 健康状态,
	t2.remarks AS 备注,
	t2.current_day AS 日期,
	t2.symptoms AS 症状
FROM
	epidemic_upside t1
LEFT JOIN epidemic_situation_daily t2 ON t1.form_id = t2.form_id
    '''

    select_sqli=sql
    cur.execute(select_sqli)
    data=cur.fetchall()
    data=list(data)
    for i in range(len(data)):
        # print(data[i])
        pass
    return data
    cur.close()  # 关闭游标
    conn.close()  # 关闭数据库连接
# conMysql()
#-- 不适症状 0发烧 1咳嗽 2无力 3其他

def write_to_excel(name):
    filename = name + '.xls' #定义Excel名字
    wbk=xlwt.Workbook()
    sheet1 = wbk.add_sheet('sheet1',cell_overwrite_ok=True)
    fileds = [u'序号',u'姓名',u'联系电话',u'家庭所在地',u'小区名称',u'健康状态',u'备注',u'日期',u'症状']
    data = conMysql()
    data = list(data)
    k=0
    for filed in range(0,len(fileds)):
        sheet1.write(0,filed,fileds[filed])
#        print(0,filed,fileds[filed])

    for i in range(1,len(data)):
        # print(i, 0, data[i][0])
        sheet1.write(i, 0, data[i][0])

        for j in range(1,9):
           # print(i,j,data[i][j])
            #print(type(data[i][5])

            sheet1.write(i,j,data[i][j])
            if data[i][5] == "0":
                sheet1.write(i, 5, "健康")
            elif data[i][5] == '1':
                sheet1.write(i, 5, "不适")
            else:
                sheet1.write(i, 5, "")

            if data[i][8] == "0":
                sheet1.write(i, 8, "发烧")
            elif data[i][8] == '1':
                sheet1.write(i, 8, "咳嗽")
            elif data[i][8] == '2':
                sheet1.write(i, 8, "无力")
            elif data[i][8] == '3':
                sheet1.write(i, 8, "其他")
            else:
                sheet1.write(i, 8, "")
        k = k + 1
        sheet1.write(k,0,k)

    wbk.save(filename)

if __name__ == '__main__':
    write_to_excel('baobiao')
    sentemail()
