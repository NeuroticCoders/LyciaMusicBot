FROM node:16-buster-slim
RUN apt update && apt upgrade -y && apt install ffmpeg git -y
COPY . /LyciaMusic
WORKDIR /LyciaMusic
RUN yarn install
RUN yarn build
RUN rm -rf src
CMD yarn start
