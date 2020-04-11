FROM ubuntu:18.04
COPY debuild.sh /debuild.sh
RUN chmod +x /debuild.sh
CMD ["/debuild.sh"]
