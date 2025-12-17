FROM maven:3.9-amazoncorretto-11

LABEL author="raheem" priject="Boardgame"

WORKDIR /Boardgame

COPY . .

RUN mvn package

EXPOSE 8080

CMD ["sh", "-c", "java -jar target/*.jar"]