FROM kenkannih/ice-userbot:buster

RUN bash home/repo

WORKDIR /home/iceuserbot/

CMD [ "bash", "start" ]
