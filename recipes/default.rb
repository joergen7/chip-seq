# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: default
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.

sra_link = "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByExp/sra/SRX%2FSRX243%2FSRX243760"
sra_dir  = "#{node.dir.data}/sra"
sra_file = "#{sra_dir}/SRR748312.sra"


include_recipe "chef-bioinf-worker::hg19"
include_recipe "chef-bioinf-worker::sratools"
include_recipe "chef-bioinf-worker::trimmomatic"
include_recipe "chef-bioinf-worker::bwa"
include_recipe "chef-bioinf-worker::samtools"
include_recipe "chef-bioinf-worker::peakranger"
include_recipe "chef-bioinf-worker::bedtools"
include_recipe "chef-cuneiform::default"


# create directories
directory sra_dir
directory node.dir.wf


# download read set
remote_file sra_file do
  action :create_if_missing
  source sra_link
  retries 1
end


# place workflow
template "#{node.dir.wf}/chip-seq.cf" do
  source "chip-seq.cf.erb"
end

