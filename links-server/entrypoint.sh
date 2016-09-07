#!/bin/bash

create_default_config(){
  echo -e "
maxsize = 4294967296
allowhotlink = true
bind = 0.0.0.0:8080
sitename = linx-server on docker
remoteuploads = true 
" > /opt/config.ini
}


if [ -e "/opt/config.ini" ]
then
    echo "CONFIG FOUND IN: /opt/config.ini"
else
    echo "CONFIG NOT FOUND IN: /opt/config.ini - USING DEFAULTS"
    create_default_config
fi

cat /opt/config.ini

/opt/linx-server -config /opt/config.ini

