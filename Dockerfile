FROM gliderlabs/alpine:3.1
RUN apk --update add logrotate
ADD logrotate.conf /logrotate.conf
ADD run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]