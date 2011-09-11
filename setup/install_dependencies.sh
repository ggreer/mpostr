#!/bin/sh

# This is evil and installs a crappy old version of rails/gem, which I then overwrite with gem update --system
aptitude install build-essential liblzo2-dev libssl-dev libmysqlclient-dev rails apache2 apache2-mpm-prefork apache2-prefork-dev
gem update --system
gem1.8 install -v=2.1.0 rails
gem1.8 install passenger

