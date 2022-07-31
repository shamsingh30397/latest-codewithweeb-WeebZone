FROM codewithweeb/weebzone:stable

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt install mediainfo -y

CMD ["bash", "start.sh"]
