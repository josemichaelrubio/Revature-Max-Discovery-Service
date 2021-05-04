FROM java:8
COPY build/libs/Hope-1.0.0.jar .
EXPOSE 80
CMD java -jar Hope-1.0.0.jar