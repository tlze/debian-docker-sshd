FROM debian

WORKDIR /root
COPY *.sh /root/
RUN sh init.sh
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US \
    LC_ALL=en_US.UTF-8
EXPOSE 22

# 启动命令行
CMD ["/usr/sbin/sshd", "-D"]
