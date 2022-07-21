#!/bin/sh
file=$(uci get xunlei.config.file)
#while :
  #do
    num=$(ps | grep "kill" | grep -v "grep")
    if [ "$num" ]; then
        echo "Thunder ET stop" 
        break
    else
    stillRunning=$(ps |grep "EmbedThunderManager" |grep -v "grep")
    if [ "$stillRunning" ] ; then
        echo "" > /dev/null
    else
        echo "Thunder ET start" 
        #$file/xunlei/lib/./EmbedThunderManager 0 >/dev/null &
        $file/xunlei/./portal -s
        $file/xunlei/./portal -l 0
        echo "Thunder ET service was exited!" 
    fi
    fi
    sleep 10
    
#done
