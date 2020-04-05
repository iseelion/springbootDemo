# Docker image for springboot file run
# VERSION 0.0.1
# Author: iseelion
# 基础镜像使用java
FROM java:8
# 作者
MAINTAINER iseelion <iseelion@163.com>
# VOLUME 指定了临时文件目录为/tmp。
#Spring Boot 使用的内嵌 Tomcat 容器默认使用/tmp作为工作目录
VOLUME /tmp 
# 将jar包添加到容器中并更名为app.jar
ADD target/springboot_demo-0.0.1-SNAPSHOT.jar app.jar
#为了缩短 Tomcat 启动时间，添加一个系统属性指向 “/dev/urandom” 作为 Entropy Source
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]