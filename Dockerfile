FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
MAINTAINER “Emory Merryman” emory.merryman+DoTDeCocXJroqaWu@gmail.com>
ENV USER emory
RUN dnf update --assumeyes && dnf install --assumeyes gnucash && dnf update --assumeyes && dnf clean all && useradd -m ${USER} && usermod --uid 1000 ${USER} && usermod --gid 1000 ${USER}
VOL /home/${USER}
ENV HOME /home/${USER}
USER ${USER}
CMD /usr/bin/gnucash


