FROM ubuntu:trusty

RUN apt-get -y install wget
RUN wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1404-3.2.1-rc1.tgz
RUN tar -xvf mongodb-linux-x86_64-ubuntu1404-3.2.1-rc1.tgz

# RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
# RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
#
# RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
#     DEBIAN_FRONTEND=noninteractive apt-get install -y mongodb-org-mongos

COPY entrypoint.sh /entrypoint.sh

EXPOSE 27017
CMD ["/entrypoint.sh"]
