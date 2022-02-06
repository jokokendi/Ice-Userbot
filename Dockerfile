FROM kenkannih/ice-userbot:buster
RUN git clone -b Ice-Userbot https://github.com/jokokendi/Ice-Userbot /home/manuserbot/ \
    && chmod 777 /home/manuserbot \
    && mkdir /home/manuserbot/bin/

COPY ./sample_config.env ./config.env* /home/manuserbot/

WORKDIR /home/manuserbot/

CMD [ "bash", "start" ]
