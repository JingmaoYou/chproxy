FROM debian

RUN apt update && apt install -y ca-certificates

COPY chproxy /

EXPOSE 9090

ENTRYPOINT ["/chproxy"]
CMD [ "--help" ]
