#!/usr/bin/env python
# -*- coding: utf-8 -*- 
import sqlite3
import time

ISOTIMEFORMAT="%Y-%m-%d %X.000000"
CurrentTime=time.strftime(ISOTIMEFORMAT,time.localtime())
#CurrentTime = "2017-02-14 16:00:00.000000"
#print CurrentTime
def tms_check():
  i=0
  state=0
  conn = sqlite3.connect("/aam-lms/db/cinema_services.db")
  #conn = sqlite3.connect("/usr/local/bin/cinema_services.db")
  cursor=conn.execute("SELECT complex_identifier,screen_identifier,start,end,feature_title,state,moved FROM pos WHERE start>?",(CurrentTime,))
  for row in cursor:
     if row[5] ==  "deleted" :
         #print "error",row[0],row[1],row[2],row[3],row[4],row[5],row[6]
         state=1
         i +=1
     else:
         #print "ok",row[0],row[5]
         i +=0
         #print i
  conn.close()
  #return state
  print state

if __name__=="__main__":
  #tms=tms_check()
  #print tms
  tms_check()

