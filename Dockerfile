FROM debian:bullseye

RUN apt-get update && apt-get install -y php curl
ADD sites sites
ADD blackeye.sh .
ADD entrypoint.sh .

CMD ["/bin/bash", "entrypoint.sh"]
