# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: data
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.

id_list = [576933, 576938]
sra_dir = "#{node.dir.data}/sra"
ref_dir = "#{node.dir.data}/ref"

# create directories
directory node.dir.data
directory sra_dir
directory ref_dir

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

cookbook_file "#{ref_dir}/Escherichia_coli_K_12_MG1655.fasta" do
  source "Escherichia_coli_K_12_MG1655.fasta"
end