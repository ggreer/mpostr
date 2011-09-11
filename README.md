# Dependencies

openvpn-2.1_rc15 needs build-essential, liblzo2-dev, and libssl-dev to build
myopenvpn needs libmysqlclient-dev

    sudo aptitude install build-essential liblzo2-dev libssl-dev libmysqlclient-dev


# Building

    scons


# Directories

* config - random config files for apache and openvpn
* crypto - certs and keys because I'm a lazy bum
* extern
    * myopenvpn - module so openvpn can auth against mysql db
    * openvpn - openvpn server
* web - website (rails app)
