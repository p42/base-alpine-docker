FROM gliderlabs/alpine
MAINTAINER Jordan Clark jordan.clark@esu10.org

COPY container-files /                                                                                                                                                        
ENTRYPOINT ["/bootstrap.sh"]
