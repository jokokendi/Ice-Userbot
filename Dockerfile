FROM kenkannih/ice-userbot:buster

RUN git clone -b Ice-Userbot https://github.com/jokokendi/Ice-Userbot /home/iceuserbot/ \
    && chmod 777 /home/iceuserbot \
    && mkdir /home/iceuserbot/bin/

COPY ./sample_config.env ./config.env* /home/iceuserbot/

WORKDIR /home/iceuserbot/

CMD ["python3", "-m", "userbot"]
