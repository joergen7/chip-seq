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

remote_file "#{node["dir"]["data"]}/SRR576933" do
  action :create_if_missing
  source "ftp://ftp.sra.ebi.ac.uk/vol1/srr/SRR576/SRR576933"
  checksum "26fd4d0eea871ee5a4193bc399ba684be5b7b848a1170c20994ea6bc1183be38"
  retries 1
end

remote_file "#{node["dir"]["data"]}/SRR576938" do
  action :create_if_missing
  source "ftp://ftp.sra.ebi.ac.uk/vol1/srr/SRR576/SRR576938"
  checksum "503e33a4b4b5ae644e2ce48901b7113a416eddbd358832cc5f994e7e1b1ee0d4"
  retries 1
end

remote_file "#{node["dir"]["data"]}/GCF_000005845.2_ASM584v2_genomic.fna.gz" do
  action :create_if_missing
  source "ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz"
  checksum "a96d3cfa58c88d477013c768f90a11d2386d42a70d566abfb6d9013dcbd24255"
  retries 1
end