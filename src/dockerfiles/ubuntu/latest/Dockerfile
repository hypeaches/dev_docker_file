FROM ubuntu:latest

COPY sources.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get -y install build-essential && \
    apt-get -y install gcc && \
    apt-get -y install g++ && \
    apt-get -y install cgdb && \
    apt-get -y install make && \
    apt-get -y install cmake && \
    apt-get -y install golang-go && \
    apt-get -y install python3-dev && \
    apt-get -y install openssh-server && \
    apt-get -y install git && \
    apt-get -y install vim && \
    apt-get -y install lrzsz && \
    apt-get -y install zsh && \
    apt-get -y install supervisor && \
    git clone https://github.com/hypeaches/dev_docker_file.git /home/dev_docker_file && \
    /bin/bash /home/dev_docker_file/src/conf/conf.sh && \
    rm -rf /home/dev_docker_file && \
    echo 'root:123456' |chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
