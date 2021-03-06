#!/bin/sh

: <<'MENU'
1.HOST_INIT false
2.HOST_INIT true
3.HOST_INIT true;VIDEOPORT_INIT true
4.HOST_INIT true;VIDEOPORT_INIT true;GETVIDEOPORT true
5.HOST_INIT true;VIDEOPORT_INIT true;GETVIDEOPORT true;VIDEOPORT_ENABLED true
6.HOST_INIT true;VIDEOPORT_INIT true;GETVIDEOPORT true;VIDEOPORT_ENABLED true;ISDISPLAY_CONNECTED true
7.HOST_INIT true;VIDEOPORT_INIT true;GETVIDEOPORT true;VIDEOPORT_ENABLED true;ISDISPLAY_CONNECTED true;GET_RESOLUTION true
8.HOST_INIT true;VIDEOPORT_INIT true;GETVIDEOPORT true;VIDEOPORT_ENABLED true;ISDISPLAY_CONNECTED true;GET_RESOLUTION true;SET_RESOLUTION true
MENU

OPTION=8
TRUE=true
FALSE=false
CONFIG_FILE="/usr/local/etc/WPEFramework/rdk_devicesettings_hal.conf"
echo $CONFIG_FILE
case "$OPTION" in
"1")
    echo "Option1"
    sed -i -e "s/\(HOST_INIT=\).*/\1$FALSE/" $CONFIG_FILE
    ;;
"2")
    echo "Option2"
    sed -i -e "s/\(HOST_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_INIT=\).*/\1$FALSE/" $CONFIG_FILE
   ;;
"3")
    echo "Option3"
    sed -i -e "s/\(HOST_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GETVIDEOPORT=\).*/\1$FALSE/" $CONFIG_FILE
   ;;
"4")
    echo "Option4"
    sed -i -e "s/\(HOST_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GETVIDEOPORT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_ENABLED=\).*/\1$FALSE/" $CONFIG_FILE
   ;;
"5")
    echo "Option5"
    sed -i -e "s/\(HOST_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GETVIDEOPORT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_ENABLED=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(ISDISPLAY_CONNECTED=\).*/\1$FALSE/" $CONFIG_FILE
   ;;
"6")
    echo "Option6"
    sed -i -e "s/\(HOST_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GETVIDEOPORT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_ENABLED=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(ISDISPLAY_CONNECTED=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GET_RESOLUTION=\).*/\1$FALSE/" $CONFIG_FILE
    sed -i -e "s/\(SET_RESOLUTION=\).*/\1$FALSE/" $CONFIG_FILE
   ;;
"7")
    echo "Option7"
    sed -i -e "s/\(HOST_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GETVIDEOPORT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_ENABLED=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(ISDISPLAY_CONNECTED=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GET_RESOLUTION=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(SET_RESOLUTION=\).*/\1$FALSE/" $CONFIG_FILE
   ;;
"8")
    echo "Option8"
    sed -i -e "s/\(HOST_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_INIT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GETVIDEOPORT=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(VIDEOPORT_ENABLED=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(ISDISPLAY_CONNECTED=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(GET_RESOLUTION=\).*/\1$TRUE/" $CONFIG_FILE
    sed -i -e "s/\(SET_RESOLUTION=\).*/\1$TRUE/" $CONFIG_FILE
   ;;     
esac
