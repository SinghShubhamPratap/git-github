#Linux images we are going to use
FROM alpine
WORKDIR /root/helloworld
COPY helloworld.java /root/helloworld

#Installation of jdk
RUN apk add openjdk8
#RUN apk add openjdk-8-jdk-headless
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

#Compiling our code
RUN javac helloworld.java

ENTRYPOINT java Helloworld
