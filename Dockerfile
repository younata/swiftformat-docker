FROM swift:slim

ADD . /opt/lib
WORKDIR /opt/lib

RUN swift build -c release && \
    cp `swift build --show-bin-path` /bin/swiftformat

RUN chmod 755 /bin/swiftformat

ENTRYPOINT ["/bin/swiftformat"]
