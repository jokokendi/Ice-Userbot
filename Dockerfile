FROM biansepang/weebproject:buster

RUN git clone -b Ice-Userbot https://github.com/jokokendi/Ice-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/jokokendi/Ice-Userbot/Ice-Userbot/requirements.txt

CMD [ "bash", "start" ]
