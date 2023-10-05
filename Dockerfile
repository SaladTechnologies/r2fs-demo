FROM saladtechnologies/sdnext:latest

RUN apt-get update -y && apt-get install -y s3fs kmod 

RUN s3fs --version

USER webui-user
RUN git config --global --add safe.directory /webui

USER root
RUN echo user_allow_other >> /etc/fuse.conf

COPY launch .

ENV HOST='0.0.0.0'
ENV PORT=7860

ENTRYPOINT ["./launch"]