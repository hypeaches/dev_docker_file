FROM work/dev/cpp-sshd-base:latest

RUN mkdir /var/run/sshd && \
    mkdir /root/.ssh && \
    /usr/sbin/sshd-keygen -A && \
    echo 'root:123456' |chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
