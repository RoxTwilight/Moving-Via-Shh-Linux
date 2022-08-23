#!/bin/sh

        ftp_site="Your IP"
        username=""
        PASSWD="Your passwword"
#source path
        spath=""
#Remote Path
        rpath=""

        cd $spath

        sftp $username@$ftp_site <<-EOF
        $PASSWD
        cd $rpath
        mput *.mp3
        bye
        exit
        EOF
        echo "Success : $?"
        
