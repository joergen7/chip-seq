# coding: utf-8

name "chip-seq"
maintainer "Jörgen Brandt"
maintainer_email "brandjoe@hu-berlin.de"
license 'all_rights'
description 'Installs/Configures chip-seq'
long_description 'Installs/Configures chip-seq'
version '0.1.0'

recipe "chip-seq::_common", "Performs an update of the package system."
recipe "chip-seq::default", "Sets up all preconditions to run the ChIP-Seq workflow."


depends "chef-bioinf-worker"
depends "chef-cuneiform"
