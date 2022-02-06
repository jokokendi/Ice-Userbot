FROM kenkannih/ice-userbot:slim-buster

RUN git clone -b Ice-Userbot https://github.com/CoeF/Ice-Userbot /home/iceuserbot/ \
    && chmod 777 /home/iceuserbot \
    && mkdir /home/iceuserbot/bin/

WORKDIR /home/iceuserbot/

CMD [ "bash", "start" ]
