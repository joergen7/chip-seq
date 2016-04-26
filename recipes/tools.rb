# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: tools
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.

include_recipe "chef-bioinf-worker::sratools"
include_recipe "chef-bioinf-worker::fastqc"
include_recipe "chef-bioinf-worker::bowtie"
include_recipe "chef-bioinf-worker::macs"

