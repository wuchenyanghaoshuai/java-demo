FROM wuchenyanghaoshuai/jre-sky-agent:v1
ADD run.sh /
RUN chmod +x /run.sh
RUN sed -i 's/dl-cdn\.alpinelinux\.org/mirrors\.aliyun\.com/g' /etc/apk/repositories
COPY app.jar /
CMD ["/run.sh"]
