FROM ubuntu:latest
LABEL ravi
RUN apt-get update
RUN apt-get install fortune-mod cowsay -y
RUN apt-get install -y netcat
RUN mv /usr/games/cowsay /usr/local/bin/cowsay
RUN mv /usr/games/fortune /usr/local/bin/fortune
ADD wisecow.sh /wisecow.sh
RUN chmod +x wisecow.sh
CMD ["/bin/bash", "./wisecow.sh"]




