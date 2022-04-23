#function:从一个文件夹的m个文件中每隔x个数抽取一个文件。
import os
import os.path 
import shutil 
import time,  datetime

Original_File_Path = "right_lidar/"
Target_File_Path = "jump_right_lidar/"

def coverFiles(sourceDir,  targetDir): 
        zhengchu = 0
        folder_list = os.listdir(sourceDir)
        folder_list.sort()
        #for file in os.listdir.sort(sourceDir):
        for i in range(len(folder_list)):
            #zhengchu+=1
            #choose one from x,current c=20
            # ------------------------------------------
            #liadr:20    
            if zhengchu%20==0 : 
                sourceFile = os.path.join(sourceDir,  folder_list[i]) 
                targetFile = os.path.join(targetDir,  folder_list[i])
                #cover the files 
                if os.path.isfile(sourceFile): 
                    open(targetFile, "wb").write(open(sourceFile, "rb").read())
            zhengchu+=1

def getCurTime(): 
    nowTime = time.localtime() 
    year = str(nowTime.tm_year) 
    month = str(nowTime.tm_mon) 
    if len(month) < 2: 
        month = '0' + month 
    day =  str(nowTime.tm_yday) 
    if len(day) < 2: 
        day = '0' + day 
    return (year + '-' + month + '-' + day)

if  __name__ =="__main__":
    print "Start(S) or Quilt(Q) \n" 
    flag = True 
    while (flag): 
        answer = raw_input() 
        if  'Q' == answer: 
            flag = False 
        elif 'S'== answer : 
           formatTime = getCurTime() 
           #targetFoldername = "Build " + formatTime + "-01" 
           coverFiles(Original_File_Path,  Target_File_Path) 
           #writeVersionInfo(Target_File_Path+"\\ReadMe.txt") 
           print "all sucess" 
        else: 
           print "not the correct command"
