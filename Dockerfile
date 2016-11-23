FROM ubuntu:14.04
MAINTAINER Altair Six

RUN apt-get update && \
	apt-get install -y ca-certificates curl software-properties-common pdftk git wget tree

# Install Node.
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get update && apt-get install nodejs

# Install Node Modules.
RUN npm install -g html-pdf

# Install dependency for html-pdf (See more: http://stackoverflow.com/questions/29245592/html-pdf-in-meteor-epipe-error)
RUN sudo apt-get install libfontconfig -y

ADD pdf.sh /bin/pdf.sh

WORKDIR /pdf
