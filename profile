# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

# The default umask is now handled by pam_umask.
# See pam_umask(8) and /etc/login.defs.

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi








### alias
alias t1100='tail -1100f'
alias psef='ps -ef|grep -v grep |grep '

alias duah='du -ah --max-depth=1'






### global variables
NAMESRV_ADDR='127.0.0.1:9876'
export NAMESRV_ADDR

HADOOP_USER_NAME=root
export HADOOP_USER_NAME



###Matlab_variable
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/MATLAB/MATLAB_Runtime/v85/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v85/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v85/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v85/sys/opengl/lib/glnxa64














### some environment variables:
#jdk
export JAVA_HOME=/opt/jdk1.7.0_79
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH
#maven
M2_HOME=/opt/apache-maven-3.3.3
export M2_HOME
#tomcat
CATALINA_HOME=/opt/apache-tomcat-7.0.63
export CATALINA_HOME
#zookeeper
ZOOKEEPER_HOME=/opt/zookeeper-3.4.6
export ZOOKEEPER_HOME
#rocketmq
ROCKETMQ_HOME=/opt/alibaba-rocketmq
export ROCKETMQ_HOME
#storm
export STORM_HOME=/opt/apache-storm-0.9.2-incubating
#redis
export REDIS_HOME=/opt/redis-3.0.0
#jstorm
export JSTORM_HOME=/opt/jstorm/jstorm-0.9.6.2
#hadoop
export HADOOP_HOME=/opt/hadoop-2.7.0


PATH=$PATH:$ZOOKEEPER_HOME/bin:$M2_HOME/bin:$CATALINA_HOME/bin:$ROCKETMQ_HOME/bin:$STORM_HOME/bin:$REDIS_HOME/src:$JSTORM_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

