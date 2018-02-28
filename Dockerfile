FROM idein/rust-stable:1.24.0
MAINTAINER Akihiro Uchida <uchida@idein.jp>

ENV DIESEL_VERSION 1.1.0
RUN apt-get update && apt-get install -y libpq-dev
RUN cargo install diesel_cli --vers $DIESEL_VERSION --no-default-features --features postgres

CMD ["diesel"]
