#!/bin/bash
RSSLINK='https://iptorrents.com/t.rss?u=1907249;tp=a3457796dfb619afff6f2260c34ff55a;60;1;86;64;35;94;26;95;98;2;47;43;45;71;50;44;69;92;58;87;77;101;89;90;96;6;48;54;62;38;68;20;100;7;3;80;93;37;36;21;55;78;23;24;25;66;82;65;83;79;22;5;99;4;85;8;81;91;84;download;free' 
RPCNAME='test'  
RPCPASS='XIONGHUI123' 
DOWNCMD="transmission-remote -n $RPCNAME:$RPCPASS -a \""  
wget --no-check-certificate -qO- $RSSLINK | grep "download\|passkey\|rssdd" | grep -Eo 'url=".*"|>.*<' | cut -d '"' -f 2 | sed "s#>\(.*\)<#\1#g" | sed 's/&amp;/\&/g'| sed -n "s#\(.*\)#$DOWNCMD\1\"#gp" | bash
