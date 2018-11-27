#
# Cookbook:: chip-seq
# Recipe:: data
#
# Copyright:: 2015-2018 Jörgen Brandt
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# create directories
directory node["dir"]["data"]

remote_file "#{node["dir"]["data"]}/SRR576933.sra" do
  action :create_if_missing
  source "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByStudy/sra/SRP/SRP015/SRP015911/SRR576933/SRR576933.sra"
  retries 1
end

remote_file "#{node["dir"]["data"]}/SRR576938.sra" do
  action :create_if_missing
  source "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByStudy/sra/SRP/SRP015/SRP015911/SRR576938/SRR576938.sra"
  retries 1
end

remote_file "#{node["dir"]["data"]}/GCF_000005845.2_ASM584v2_genomic.fna.gz" do
    action :create_if_missing
    source "ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz"
    retries 1
end