#!/bin/sh

JAVA_OPTS=${JAVA_OPTS:-"-Dfile.encoding=UTF-8"}
CATALINA_OPTS="$CATALINA_OPTS $JAVA_OPTS"

if [[ ${PROFILE} = "dev" ]] ; then
    CATALINA_OPTS="$CATALINA_OPTS -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=5006,suspend=n"
fi


echo ${CATALINA_OPTS}

java ${CATALINA_OPTS} -Duser.timezone=Asia/Shanghai -Dfile.encoding=utf-8  -jar /app.jar
