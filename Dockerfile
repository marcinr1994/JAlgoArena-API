FROM openjdk:8


ADD build/libs/jalgoarena-api-*.jar /opt/jalgoarena-api/jalgoarena-api.jar

ENV EUREKA_URL=http://eureka:5000/eureka
EXPOSE 5001

ENTRYPOINT java -Dserver.port=5001 -jar /opt/jalgoarena-api/jalgoarena-api.jar