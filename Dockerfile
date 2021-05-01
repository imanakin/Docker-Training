FROM ubuntu:16.04

MAINTAINER  Yoonhope "anakin.park@gmail.com"

RUN apt-get update

RUN apt-get install -y nginx

WORKDIR /etc/nginx # 이후의 CMD 명령어가 실행될 경로를 찾습니다.

CMD ["nginx", "-g", "daemon off;"] # nginx를 백그라운드에서 돌아가도록 실행합니다.

EXPOSE 80 # 80번 웹 서버 포트를 열어 웹 서버에 정상적으로 접근할 수 있도록 합니다.
