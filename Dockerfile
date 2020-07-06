FROM ubuntu:18.04
RUN apt update && apt install ffmpeg imagemagick -y
ENTRYPOINT []