FROM openjdk
RUN mkdir -p /opt/app/template
WORKDIR /opt/app/template
COPY target/template-1.0-SNAPSHOT-jar-with-dependencies.jar template.jar
COPY target/start.sh start.sh
RUN chmod a+x start.sh
ENTRYPOINT ["sh","-c","./start.sh"]