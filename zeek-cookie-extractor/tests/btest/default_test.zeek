# @TEST-EXEC: zeek -C -r $PCAPS/cookie_extract01.pcap $PACKAGE %INPUT
# @TEST-EXEC: btest-diff http.log