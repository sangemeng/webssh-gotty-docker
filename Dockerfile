FROM ubuntu:latest
ENV TZ=Asia/Shanghai
ENV GottyUser=none
ENV GottyPassword=none
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD Caddyfile /Caddyfile
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT ["/bin/bash", "/configure.sh"]
EXPOSE 8080
