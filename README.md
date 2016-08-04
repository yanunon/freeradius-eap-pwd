#### Build Container ####
`docker build -t freeradius .`

####Run Container ####
`docker run -d -it -p 1812:1812/tcp -p 1812:1812/udp -e SECRET=test_secret -e IDENTITY=test_identity -e PASSWORD=test_password freeradius /usr/bin/run_freeradius.sh`

####Configure Router ####
set freeradius server ip

set secret to `test_secret`

####Configure Client ####
set EAP type to `PWD`

set identity to `test_identity`

set password to `test_password`
