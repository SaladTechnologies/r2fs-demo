FROM saladtechnologies/sdnext:dynamic-r2fs

RUN apt-get update -y && apt-get install -y s3fs kmod 

RUN s3fs --version

USER webui-user
RUN git config --global --add safe.directory /webui

USER root
RUN echo user_allow_other >> /etc/fuse.conf

COPY launch .

ENTRYPOINT ["./launch"]