import sys
import os
EnsureSConsVersion(0, 97, 0)
SetOption('num_jobs', 2)

DIRS = ['config', 'extern', 'web']

MYSQL_LIBS = ['mysqlclient']
MYOPENVPN_CFLAGS = ['-fPIC']

if sys.platform == "darwin":
  MYSQL_INC = ['/opt/local/include/mysql5/mysql/']
  MYSQL_LIB_PATH = ['/opt/local/lib/mysql5/mysql']
else:
  MYSQL_INC = ['/usr/include/mysql/']
  MYSQL_LIB_PATH = ['/usr/lib/mysql']

env = Environment(CPPPATH=MYSQL_INC)

Export('env')
Export('MYSQL_LIBS MYSQL_INC MYSQL_LIB_PATH')
Export('MYOPENVPN_CFLAGS')

SConscript(['extern/SConscript'])

def install_openvpn():
  print "Installing OpenVPN"
  env.Install("/impostor", "extern/openvpn/openvpn")

def install_openvpn_config():
  print "Installing OpenVPN config"
  env.Install("/impostor/config", "config/server.conf")
  env.Install("/impostor/config", "config/server-up.sh")
  env.Install("/impostor/config", "config/dh1024.pem")
  env.Install("/impostor/config", "config/ca.crt")
  env.Install("/impostor/config", "config/server.crt")
  env.Install("/impostor/config", "config/server.key")

def install_website():
  print "Installing web site"
#  cp -r ../web ${I_HOME}/
#  mkdir ${I_HOME}/web/public/config
#  cp ../config/ca.crt ${I_HOME}/web/public/config/
#  cp ../config/client/* ${I_HOME}/web/public/config/

if 'install' in COMMAND_LINE_TARGETS:
  print "Installing everything"
  install_openvpn()
  install_openvpn_config()
  install_website()
elif 'install_openvpn' in COMMAND_LINE_TARGETS:
  install_openvpn()
elif 'install_openvpn_config' in COMMAND_LINE_TARGETS:
  install_openvpn_config()
elif 'install_website' in COMMAND_LINE_TARGETS:
  install_website()
