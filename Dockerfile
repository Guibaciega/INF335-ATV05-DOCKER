FROM openjdk:latest


COPY OlaUnicamp.java /

RUN javac OlaUnicamp.java

CMD [ "java", "OlaUnicamp.java"]
