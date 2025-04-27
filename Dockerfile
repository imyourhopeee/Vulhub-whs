# Dockerfile
FROM oraclelinux:7-slim

RUN yum install -y java-1.8.0-openjdk wget tar unzip && \
    yum clean all

ENV JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

WORKDIR /opt

# WebLogic 설치 파일 필요( 라이선스 문제로 weblogic 설치파일 생략 )
# 예시: wls1036_generic.jar 복사 후 설치
# COPY wls1036_generic.jar /opt/wls1036_generic.jar
# RUN java -jar /opt/wls1036_generic.jar -mode=silent -silent_xml=/opt/silent.xml

EXPOSE 7001

CMD ["tail", "-f", "/dev/null"]
