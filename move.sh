#!/bin/sh

        ftp_site="192.168.1.2"
        username="rox"
        PASSWD="7875"
#source path
        spath="/home/rox/songs"
#Remote Path
        rpath="/C:/Users/Rox/1"

        cd $spath

        sftp $username@$ftp_site <<-EOF
        $PASSWD
        cd $rpath
        mput *.mp3
        bye
        exit
        EOF
        echo "Success : $?"
        