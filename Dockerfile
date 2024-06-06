FROM node:lts-buster

RUN git clone https://github.com/gifteddevs/Asta-Md /root/Gifted

RUN npm cache clean --force
RUN rm -rf /root/Gifted/node_modules

WORKDIR /root/Gifted

RUN npm install


RUN npm update

EXPOSE 9000

CMD ["npm", "start"]

# Let's use Node.js LTS (Long Term Support) version based on Buster 
