FROM node:14.17.3

WORKDIR /highchart

RUN npm install pm2 -g

ENV ACCEPT_HIGHCHARTS_LICENSE="YES"

COPY . /highchart/

RUN npm install

CMD npm start