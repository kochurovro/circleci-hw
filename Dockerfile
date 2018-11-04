FROM scratch
COPY srv /
EXPOSE 8080
ENTRYPOINT ["/srv"]
