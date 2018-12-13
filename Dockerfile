FROM openjdk:8
LABEL Description="Eureka Server" Version="1.0.0"
ADD target/eurekaserver-1.0.0.jar eurekaserver.jar
RUN bash -c 'touch /eurekaserver.jar'
ENTRYPOINT ["java","-jar","eurekaserver.jar"]