FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-alpine
RUN apk add --no-cache curl
WORKDIR /app
COPY target/springboot-aws-deploy-service.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
