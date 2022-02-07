#Ice-Userbot @UsersBanned
FROM kenkannih/ice-userbot:buster

RUN git clone -b Ice-Userbot https://github.com/jokokendi/Ice-Userbot /home/iceuserbot/ \
    && chmod 777 /home/iceuserbot \
    && mkdir /home/iceuserbot/bin/

WORKDIR /home/iceuserbot/

CMD [ "bash", "start" ]
