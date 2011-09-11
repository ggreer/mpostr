#!/bin/sh

I_HOME=/impostor

# TODO: This is totally lame, it should use a build system

# We don't want to overwrite configs by accident
cp ../config/* ${I_HOME}/config/
cp ../crypto/keys/dh1024.pem ${I_HOME}/config/
cp ../crypto/keys/ca.crt ${I_HOME}/config/
cp ../crypto/keys/server.crt ${I_HOME}/config/
cp ../crypto/keys/server.key ${I_HOME}/config/

cp ../extern/openvpn/openvpn ${I_HOME}/
cp ../extern/myopenvpn/libmyopenvpn.so ${I_HOME}/
cp -r ../web ${I_HOME}/
mkdir -p ${I_HOME}/web/public/config
cp ../config/ca.crt ${I_HOME}/web/public/config/
cp ../config/client/* ${I_HOME}/web/public/config/
cp ../bandwidth.rb ${I_HOME}/
