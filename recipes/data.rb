# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: data
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.

sra_link = "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByExp/sra/SRX/SRX243/SRX243760/SRR748312/SRR748312.sra"
sra_dir  = "#{node.dir.data}/sra"
sra_file = "#{sra_dir}/SRR748312.sra"


# create directories
directory node.dir.data
directory sra_dir

# download read set
remote_file sra_file do
  action :create_if_missing
  source sra_link
  retries 1
end

