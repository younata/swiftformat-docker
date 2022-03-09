FROM swift:latest

ADD SwiftFormat /opt/lib/
WORKDIR /opt/lib

RUN swift build -c release && \
    cp "`swift build -c release --show-bin-path`"/swiftformat /bin/swiftformat

RUN chmod 755 /bin/swiftformat

ENTRYPOINT ["/bin/swiftformat"]
