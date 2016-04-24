# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: data
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.

id_list = [576933, 576934, 576935, 576936, 576937, 576938, 653520, 653521, 653522]
sra_dir  = "#{node.dir.data}/sra"


# create directories
directory node.dir.data
directory sra_dir

# download read set
id_list.each { |id|

  url = "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByStudy/sra/SRP/SRP015/SRP015911/SRR#{id}/SRR#{id}.sra"
  sra_file = "#{sra_dir}/SRR#{id}.sra"
  
  remote_file sra_file do
    action :create_if_missing
    source url
    retries 1
  end
}

