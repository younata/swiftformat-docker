FROM swift:slim

ADD swiftformat_linux /bin/swiftformat

RUN chmod 755 /bin/swiftformat

ENTRYPOINT ["/bin/swiftformat"]
