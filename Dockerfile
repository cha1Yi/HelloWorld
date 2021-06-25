FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone
ENV TZ 'Asia/Shanghai'

WORKDIR /helloworld
COPY ./target/HelloWorld-*.jar /helloworld/HelloWorld.jar

EXPOSE 8080
CMD ["java","-jar","HelloWorld.jar"]
