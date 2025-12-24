#!/bin/bash



#log path set
LOG_DIR="/c/workdirectory/logs" 

#cd log_dir, if dir not exists then exit
cd $LOG_DIR || exit

#3days ago, yesterday will work here
# + = plus ke bad wala formate forllow kro, agr + nhi lagayenge to as it is %y%m%d print hoga

old_date=$(date -d "3 days ago" +%Y%m%d)


#setting tar name, it can be anything..like logs, tar, akanksha
#ideal tar name - logs-upto-$old_date.tar.gz
tar_name="akanksha.tar.gz"

#logfile namefor the logs created 3 days ago
logfile=log-$old_date.log.txt

#Combine multiple files/directories into one file
#tar -cvf tar-name file1 file2 file3
#-c = create v=verbose f=file names

if [ -f "$logfile" ]; then
tar -cvf "$tar_name" "$logfile"

echo "tar file created = $tar_name"

else echo "unable to find the file"
fi
