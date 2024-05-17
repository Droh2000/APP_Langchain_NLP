# Este es para cuando la aplicacion este terminada
FROM python:latest

RUN mkdir /app
WORKDIR /app

COPY ./ /app

# RUN apt update -y && apt install make
RUN make install

EXPOSE 8000
#CMD ["make", "run"]
