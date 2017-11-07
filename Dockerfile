FROM node:8.0.0
WORKDIR /usr/src/app
EXPOSE 8080
RUN git clone https://github.com/kencharo/react-cardstack.git
RUN cd react-cardstack && \
    npm install --save react && \
    npm install
CMD ["npm", "start", "--prefix", "/usr/src/app/react-cardstack"]
