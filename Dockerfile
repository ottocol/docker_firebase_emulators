# https://andreyka26.com/firebase-emulator-in-docker
FROM node:20-bullseye-slim

RUN apt update -y && apt install -y openjdk-11-jdk bash

RUN npm install -g firebase-tools

COPY firebase.json .firebaserc .

VOLUME /data

