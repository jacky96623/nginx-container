#!/bin/sh
set -e

certDir=/tmp/ssl
mkdir $certDir
cd $certDir

# openssl genrsa -out server.key 4096
# openssl req -new \
# 	-key server.key \
# 	-out server.csr \
# 	-subj "/C=HK/ST=/L=/O=Nginx/CN=Nginx"
# openssl x509 -req \
# 	-days 3650 \
# 	-in server.csr \
# 	-signkey server.key \
# 	-out server.crt
# cat server.key server.crt >>server.pem

cat server.key <<EOF
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDBlgHPlm/OcN64
ITm92GyCMGoADa4h+4rmEYVygajZxWAW8sn7UbGjdzlpXlKKssg0gcXyjK2xPbZP
19npwoJJiepzfdpyQ/mAOW+6iyafx0HusRCz1T0FJ7Gqjb/5ujAYNpxZ/v4KCr+f
KNwhQNpF4Vz+1e4G5RzPsEZidZC8droCQGY0LA4a9FliRYd3o7mUIwx0h5U+1y8X
BQQ0nTiGSNVnpW4MBWttFDzZfkaHtRBRMSlV1Kt9f6Z10jkS3RPHRaLWfic532T8
Y89nZjICzYF63HNwMbjWSSs1hm08FBWreWvxp8SMmKRknYQyGDqNWYiBtNHNGSWY
Kv6yoiExAgMBAAECggEAER410HNB4BQ8qt/hQ7zWB4McHx9r5PxhxsCzjLG+H8JO
IhQGW/oC28ITVRJuo8N1uag6EUhy+X0hWG5tX2LVnjFwW8BmvHuZ80aLmd1rz8LR
Eo1yEnzfgEuyGwidel8w7osxszGS/t9UHNECT3x1G1XMy99Ymh/QtuV5q9jahhel
bI51DbQI6Js7fRD4bkZuGUc8rFKcSY2/ooL6ibuKcYUDmiohG+GqarBW51SCmQUz
U6520J9gEmeDJWsJvxrSlbGxHweAWCb9C8T/CjmrgZUyFOARCxCgKK3CdCN6AFVj
jHEHtPuGnSXSh5JRV2rDxpBwYZlyOoEOoDurm2cL8wKBgQDvZ8qGT3l8EyiDXM9+
HDeg/r63b0gXYIVxi6bx7j28XmUNhk5A5C5PXqVznurxB7BVqw1JIUvG00Y/M0Xr
GeG1h3nJzFsX4Uop0XASibbpbTHFZuwNlrdf+J6gxe9RzXcCcGR9xK21MDBbX6WS
eI6l9jILl/RiAV4qwOZVi4BCRwKBgQDPAShBNAYsbf7iE0C13QW6BLCpLZiynPnU
6oPNQds30JhRTMrwXuY57MhJkEzobIY0ZHYmw19rVYIRjoF5eJXAIeC02chDq+0M
kvlx2PLgGZfzUpgpkxuCQGSZU8kMQlNtIkYvnrlNjSRszFukowaUPp5bcvOMD/9I
cW6tkS6ExwKBgQDB7fHAmuBuAZbv0l7CaVkmsTUMorhjN2zhbZ7um26nCFAThJgf
OLfK04BzCGiIlxHgU4+Pjck0ZjChQYeBypVr1zJwpXmk/np1JZMDcUsaC7oljhnp
aA1jUKIu2ifiu+2LrD+7IXcVLtP9MJ2O6Nmk1qnzekQcn78IIvpykW50QQKBgDDX
Xg8cXkSHY3cmAcOnNZ2xU5lnJ7sk7JF/D8ATRM0Di5zLGKrkST/rjUpGIM9KI9Qi
y/nTaSUjFMBdtlDZ0cN2etVQ+T52R0ULPI3PGWckwsRnfX15tyjhVpsSuMIKuDJs
vtCni6MvpSOCiDDtQjUiHS0Ij0xBzgLiuLF9KtOrAoGBAIs7ER2BPySM5LWS6hjU
nKOLvbG3fVPs8JRuft6ZOj2QQleIelsomVh+eP/BDcTAB52szKqr32yGYihiDlf8
E8ld8DF0VaQSaJb2aIw1QWA4NYL+d0Z+NYPjAjKiW4KovYXCq8jME76SY79R/to7
MZa5cWUljOZwe0kQjZY0dESn
-----END PRIVATE KEY-----
EOF

cat server.crt <<EOF
-----BEGIN CERTIFICATE-----
MIIDXTCCAuSgAwIBAgIUBZt3lmxVV3sumwdDUXolKXqz83cwCgYIKoZIzj0EAwIw
gYMxCzAJBgNVBAYTAkhLMRcwFQYDVQQKDA5uZ2tpdHNoaW5nLmNvbTEeMBwGA1UE
CwwVTmdkZU1hY0Jvb2stUHJvLmxvY2FsMRYwFAYDVQQDDA1Mb2NhbCBSb290IENB
MSMwIQYJKoZIhvcNAQkBFhRhZG1pbkBuZ2tpdHNoaW5nLmNvbTAeFw0yMzEwMDkx
NzE1MjNaFw0yNDEwMDgxNzE1MjNaMCkxJzAlBgNVBAMMHmFwcHMuazZxa3ouZHlu
YW1pYy5vcGVudGxjLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
AMGWAc+Wb85w3rghOb3YbIIwagANriH7iuYRhXKBqNnFYBbyyftRsaN3OWleUoqy
yDSBxfKMrbE9tk/X2enCgkmJ6nN92nJD+YA5b7qLJp/HQe6xELPVPQUnsaqNv/m6
MBg2nFn+/goKv58o3CFA2kXhXP7V7gblHM+wRmJ1kLx2ugJAZjQsDhr0WWJFh3ej
uZQjDHSHlT7XLxcFBDSdOIZI1WelbgwFa20UPNl+Roe1EFExKVXUq31/pnXSORLd
E8dFotZ+JznfZPxjz2dmMgLNgXrcc3AxuNZJKzWGbTwUFat5a/GnxIyYpGSdhDIY
Oo1ZiIG00c0ZJZgq/rKiITECAwEAAaOBwzCBwDAOBgNVHQ8BAf8EBAMCBaAwDAYD
VR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcDATAfBgNVHSMEGDAWgBQP30bJ
/RLoDd9JQOe3q+w6gZ/+QzBLBgNVHREERDBCgh5hcHBzLms2cWt6LmR5bmFtaWMu
b3BlbnRsYy5jb22CICouYXBwcy5rNnFrei5keW5hbWljLm9wZW50bGMuY29tMB0G
A1UdDgQWBBQ1mMCPbnxPjcbtEAJSz0evtKyJuTAKBggqhkjOPQQDAgNnADBkAjA/
BBFCHTk7VZtJ4K4zIDT/zIOOQe4OWjeCg7lMQTEYIMQyT/borJSBcZA0js2r3WUC
MGIXTZ2MPexVQVFLsBqjQASn5NmFlYvUxOfOm4BIzM00mdlf5grlfIcrrHfLcNg2
xw==
-----END CERTIFICATE-----
EOF
