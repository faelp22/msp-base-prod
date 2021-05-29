# Docker Image Prod
#
# VERSION               1.0.0

FROM alpine:3.13.5
MAINTAINER Isael Sousa <faelp22@gmail.com>

# # Install OS package set timezone and git store Install pip and packages
RUN echo "**** Install Dependencies ****" \
  && apk --no-cache add tzdata python3 libpq \
  && cp /usr/share/zoneinfo/America/Fortaleza /etc/localtime \
  && echo "America/Fortaleza" >  /etc/timezone \
  && apk del tzdata \
  && rm -rf /var/cache/apk/* /root/.ash_history /root/.cache

# docker build -t faelp22/baseprod:1.0.0 .
