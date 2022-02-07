FROM kenkannih/ice-userbot:buster-v2

RUN bash home/repo

WORKDIR /home/iceuserbot/

CMD [ "bash", "start" ]
