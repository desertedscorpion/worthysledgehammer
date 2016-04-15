
To build:

time docker build -t taf7lwappqystqp4u7wjsqkdc7dquw/worthysledgehammer .

To use:

docker run -it -e DISPLAY --net=host -v $HOME/.Xauthority:/home/developer/.Xau
thority taf7lwappqystqp4u7wjsqkdc7dquw/worthysledgehammer