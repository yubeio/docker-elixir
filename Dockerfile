FROM alpine:3.6

# Erlang
RUN set -xe \
  && apk add --no-cache \
      bash \
      curl \
      wget \
      git \
      build-base \
      ncurses-terminfo-base \
      ncurses5-libs \
      ncurses-terminfo \
      ncurses-libs \
      erlang-kernel \
      erlang-stdlib \
      erlang-compiler \
      erlang-kernel \
      erlang-stdlib \
      erlang-compiler \
      erlang-crypto \
      erlang-syntax-tools \
      erlang-inets \
      erlang-ssl \
      erlang-public-key \
      erlang-asn1 \
      erlang-sasl \
      erlang-erl-interface \
      erlang-dev \
      erlang-eunit \
      erlang-parsetools \
      erlang-xmerl \
      erlang \
  && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

ENV ELIXIR_VERSION="v1.4.5"

RUN set -xe \
  && ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" \
  && ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"\
  && apk add --no-cache --virtual .build-deps \
      unzip \
  && curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL \
  && unzip -d /usr/local elixir-precompiled.zip \
  && rm elixir-precompiled.zip \
  && apk del .build-deps \
  && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

# RUN  mix local.hex --force \
#   && mix local.rebar --force

CMD ["iex"]
