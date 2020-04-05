FROM perl:5.30

ADD cpanfile /
RUN cpanm -n --installdeps /

WORKDIR /app
COPY . .

ENTRYPOINT ["./script/st"]
