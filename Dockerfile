FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
MAINTAINER “Emory Merryman” emory.merryman+DoTDeCocXJroqaWu@gmail.com>
ENV LUSER emory
RUN dnf update --assumeyes && dnf install --assumeyes gnucash && dnf update --assumeyes && dnf clean all
RUN useradd --create-home ${USER} && usermod --uid 1000 ${USER} && usermod --gid 1000 ${USER}
ENV HOME /home/${USER}
USER ${USER}
WORKDIR /home/${USER}
VOLUME /opt/stuff
CMD /usr/bin/gnucash


