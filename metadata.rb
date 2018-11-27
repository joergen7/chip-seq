# coding: utf-8

name             'chip-seq'
maintainer       'Jörgen Brandt'
maintainer_email 'joergen.brandt@onlinehome.de'
license          'Apache 2.0'
description      'Installs/Configures chip-seq'
long_description 'Installs/Configures chip-seq'
version          '0.1.0'
chef_version     '>= 12.14' if respond_to?(:chef_version)

depends          'chef-cuneiform', '0.1.4'
