# coding: utf-8
#
# Cookbook Name:: chip-seq
# Recipe:: workflow
#
# Copyright (c) 2015 Jörgen Brandt, All Rights Reserved.

directory node.dir.wf

# place workflow
template "#{node.dir.wf}/chip-seq.cf" do
  source "chip-seq.cf.erb"
end

