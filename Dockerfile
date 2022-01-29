FROM mrismanaziz/man-userbot:buster
RUN git clone -b Ice-Userbot https://github.com/jokokendi/Ice-Userbot /home/manuserbot/ \
    && chmod 777 /home/manuserbot \
    && mkdir /home/manuserbot/bin/

WORKDIR /home/manuserbot/

CMD [ "bash", "start" ]
