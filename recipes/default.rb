# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: default
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.



include_recipe "chef-cuneiform::default"
include_recipe "chip-seq::tools"
include_recipe "chip-seq::data"
include_recipe "chip-seq::workflow"


