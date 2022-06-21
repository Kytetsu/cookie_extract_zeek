Description
A Zeek script that appends a new column to the http.log file displaying any detected cookie variable names.
Base code (without alerts) pulled from the Zeek repository:
https://github.com/zeek/zeek/blob/master/scripts/policy/protocols/http/var-extraction-cookies.zeek

Prerequisites

Zeek
Zeek Package Manger


Script Installation
This package can be installed using the Zeek Package Manager.

git clone https://gitlab.zen/gnrk/zeek-cookie-extractor
zkg install .

Note: You may need to ensure that Zeek is configured to load packages installed by Zeek Package Manager automatically.
See Zeek Package Manager Configuration
for more details.
To generate an example output:

With default configuration: zeek -C -r tests/external/cookie_extract01.pcap scripts/ && cat http.log

With modified alter level configuration: zeek -C -r tests/external/cookie_extract01.pcap -e 'redef HTTP::alert_level = "low"' scripts/ && cat http.log


Options


alert_level - The confidence level of a rule before a notice is raised. Set to "none" for no alert.
Available options are "high", "medium", "low", and "none".


Testing

git clone https://gitlab.zen/gnrk/zeek-cookie-extractor
cd tests && btest
