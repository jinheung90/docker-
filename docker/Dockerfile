FROM amazoncorretto:11

ENV BASE_PORT 8081
ENV STDOUT /home/ec2-user/stdout.log
ENV STDERR /home/ec2-user/stderr.log
ENV BASE_PATH /home/ec2-user

CMD sudo fuser -k $BASE_PORT/tcp

CMD sudo nohup java -jar /home/ec2-user/deploy.jar 1>>$STDOUT 2>> $STDERR &

CMD sleep 90;

HEALTHCHECK --interval=10s --timeout=3s CMD curl -f http://localhost:$BASE_PORT/actuator/heath || exit 1





