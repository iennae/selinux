#
# Author:: Sean OMeara (<someara@opscode.com>)
#          Kevin Keane (<kkeane@4nettech.com>)
# Cookbook Name:: selinux
# Recipe:: enforcing
#
# Copyright 2011, Opscode, Inc.
# Copyright 2013, North County Tech Center, LLC
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

node.set["selinux"]["mode"] = "enforcing"

include_recipe "selinux"

