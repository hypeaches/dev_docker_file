FROM centos:latest

RUN yum install -y gcc && \
    yum install -y gcc-g++ && \
    yum install -y gdb && \
    yum install -y make && \
    yum install -y cmake && \
    yum install -y openssh-server && \
    yum install -y git && \
    yum install -y vim && \
    yum install -y lrzsz && \
    yum install -y zsh && \
    git clone https://github.com/hypeaches/dev_docker_file.git /home/dev_docker_file && \
    /bin/bash /home/dev_docker_file/src/conf/conf.sh && \
    rm -rf /home/dev_docker_file && \
    echo 'root:123456' |chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
