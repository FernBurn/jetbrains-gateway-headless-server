# https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i

FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test

RUN  echo 'test:test' | chpasswd

# Use either local copy or download from jetbrains (tar is ~1gig)
# RUN curl -L https://download.jetbrains.com/idea/ideaIU-213.4928.7.tar.gz?_ga=2.119588232.1243318015.1634738645-141871026.1631500510&_gac=1.149562948.1631501447.CjwKCAjwyvaJBhBpEiwA8d38vOy4C41d5En9IQGTNw51ZywFmafXH4JmHq2M3SmVOCBoj4KhsqdIZRoC8psQAvD_BwE
COPY intellij.tar.gz /ide/
RUN cd /ide/ && tar -xzf intellij.tar.gz

EXPOSE 22

RUN mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
