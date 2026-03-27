# 빌드된 jar 파일을 실행하기 위한 Java 25 실행 환경
FROM eclipse-temurin:25-jdk-alpine
# 빌드 결과물 위치 지정 (gradle 기준)
ARG JAR_FILE=build/libs/*.jar
# 실행 파일을 컨테이너 내부로 복사
COPY ${JAR_FILE} app.jar
# 서버 실행 (운영/개발 환경은 환경변수로 주입받음)
ENTRYPOINT ["java", "-jar", "/app.jar"]