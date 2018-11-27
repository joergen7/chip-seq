#
# Cookbook:: chip-seq
# Recipe:: tools
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

package "sra-toolkit"
package "fastqc"
package "bowtie"
package "samtools"
package "bedtools"

package "python-dev"
package "python-numpy"
package "gcc"

macs_tar = "#{node["dir"]["archive"]}/v1.4.2.tar.gz"

directory node["dir"]["archive"]

remote_file macs_tar do
  action :create_if_missing
  source "https://github.com/taoliu/MACS/archive/v1.4.2.tar.gz"
  retries 1
end

bash "install_macs" do
  code "tar xf #{macs_tar}; (cd MACS-1.4.2; python setup.py install)"
  not_if Dir.exists?( "#{node["dir"]["archive"]}/MACS-1.4.2" )
end

package "python-pip"
package "libfreetype6-dev"
package "libxft-dev"
package "libcurl4-gnutls-dev"
package "liblapack-dev"
package "gfortran"

bash "install_deeptools" do
  code "LC_ALL=C pip install deeptools"
end
