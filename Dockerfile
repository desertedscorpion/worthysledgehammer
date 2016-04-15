FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
MAINTAINER “Emory Merryman” emory.merryman+DoTDeCocXJroqaWu@gmail.com>
RUN dnf update --assumeyes && dnf install --assumeyes gnucash && dnf update --assumeyes && dnf clean all && useradd -m emory && usermod --uid 1000 emory && groupmod --gid 1000 emory 
ENV HOME /home/emory
USER emory
CMD /usr/bin/gnucash


