FROM mcchae/sshd-x

MAINTAINER MoonChang Chae <mcchae@gmail.com>

################################################################################
# install openjdk7
################################################################################
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
RUN apk add --no-cache openjdk7 && \
    ln -sf "${JAVA_HOME}/bin/"* "/usr/bin/"


ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/sshd","-D"]

