# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: data
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.

id_list = [748312, 748318]
sra_dir  = "#{node.dir.data}/sra"


# create directories
directory node.dir.data
directory sra_dir

# download read set
id_list.each { |id|

  url = "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByExp/sra/SRX/SRX243/SRX243766/SRR#{id}/SRR#{id}.sra"
  sra_file = "#{sra_dir}/SRR#{id}.sra"
  
  remote_file sra_file do
    action :create_if_missing
    source url
    retries 1
  end
}

