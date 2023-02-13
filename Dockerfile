FROM denoland/deno

EXPOSE 8001

WORKDIR /app

ADD . /app

RUN deno cache index.ts

CMD ["run", "--allow-net=scrapbox.io", "--allow-read=./", "--allow-env", "index.ts"]
