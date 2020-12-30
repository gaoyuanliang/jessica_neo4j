############Dockerfile###########
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y tar
RUN apt-get install -y bzip2

RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

####neo4j
RUN pip3 install neo4j==4.1.1
RUN pip3 install gdown==3.12.2
RUN pip3 install rdflib==5.0.0
RUN pip3 install requests==2.24.0
RUN pip3 install pandas==1.1.3

WORKDIR /

####

RUN mkdir /home/jessica
RUN chmod 777 /home/jessica

RUN useradd -u 8877 jessica
USER jessica

####

ENV PYSPARK_PYTHON=/usr/bin/python3
ENV PYSPARK_DRIVER_PYTHON=/usr/bin/python3

####

WORKDIR /home/jessica/
RUN wget http://neo4j.com/artifact.php?name=neo4j-community-3.5.12-unix.tar.gz
RUN tar -xf 'artifact.php?name=neo4j-community-3.5.12-unix.tar.gz'

RUN git clone https://github.com/gaoyuanliang/jessica_neo4j.git
RUN mv jessica_neo4j/* ./
RUN rm -r jessica_neo4j

############Dockerfile############
