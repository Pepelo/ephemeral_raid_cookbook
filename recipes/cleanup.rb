#
# Author:: Alex Trull (<atrull@mdsol.com>)
# Cookbook Name:: ephemeral_raid
# Recipe:: cleanup
#
# Copyright 2013, Medidata Worldwide
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Some cleanup of cloud defaults that would conflict with the results of this recipe
mount "/mnt/ephemeral" do
  device "/dev/xvdb"
  action :umount
end

mount "/mnt/ephemeral" do
  device "/dev/xvdb"
  action :disable
end

mount "/mnt" do
  device "/dev/xvdb"
  action :umount
end

mount "/mnt" do
  device "/dev/xvdb"
  action :disable
end
