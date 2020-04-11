FROM ubuntu:18.04
RUN sed -i"" -e 's%http://[^ ]\+%mirror://mirrors.ubuntu.com/mirrors.txt%g' /etc/apt/sources.list \
&& apt-get update \
&& apt-get -y upgrade
ADD serene-builder /serene-builder
ADD serene-builder/debuild.sh /debuild.sh
RUN chmod +x /debuild.sh
CMD ["/debuild.sh"]
