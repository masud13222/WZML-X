FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Upgrade setuptools, pip, and wheel to avoid installation issues
RUN pip3 install --upgrade pip setuptools wheel

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
