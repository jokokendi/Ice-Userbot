FROM mrismanaziz/man-userbot:buster

RUN git clone -b Ice-Userbot https://github.com/jokokendi/Ice-Userbot /home/Ice-Userbot/ \
    && chmod 777 /home/Ice-Userbot \
    && mkdir /home/Ice-serbot/bin/

WORKDIR /home/Ice-Userbot/

CMD [ "bash", "start" ]
