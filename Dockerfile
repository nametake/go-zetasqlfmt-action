FROM ghcr.io/nametake/go-zetasqlfmt:main

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
