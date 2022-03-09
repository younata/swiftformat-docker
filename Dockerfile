FROM swift:slim

ADD swiftformat_linux.zip /opt/lib/swiftformat_linux.zip
WORKDIR /opt/lib

RUN unzip /opt/lib/swiftformat_linux.zip && \
    mv /opt/lib/swiftformat_linux /bin/swiftformat && \
    chmod 755 /bin/swiftformat

ENTRYPOINT ["/bin/swiftformat"]
