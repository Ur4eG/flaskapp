# -*- coding: utf-8 -*-
from flask import render_template
from app import myFlask
from datetime import datetime
import socket

@myFlask.route('/')
@myFlask.route('/index')
def index():
  time = datetime.now()
  ip = socket.gethostbyname(socket.gethostname())
  something = "Мир"
  title='Flask test'
  return render_template("index.html",time=time,title=title,something=something,ip=ip)
