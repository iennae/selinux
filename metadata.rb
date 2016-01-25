name             "selinux"
maintainer       "Sam Kottler"
maintainer_email "shk@linux.com"
license          "Apache"
description      "Manages SELinux policy state via LWRP or recipes."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.9.0"

supports 'redhat'
supports 'centos'
supports 'scientific'
supports 'oracle'
supports 'amazon'
supports 'debian', '<= 8.0'

recipe "selinux", "Use LWRP with state attribute to manage SELinux state."
recipe "selinux::enforcing", "Use :enforcing as the action for the selinux_state."
recipe "selinux::permissive", "Use :permissive as the action for the selinux_state."
recipe "selinux::disabled", "Use :disabled as the action for the selinux_state."

attribute "selinux/needs_reboot",
  :display_name => "Needs Reboot",
  :description => "SELinux state change requires node reboot.",
  :calculated => true,
  :type => "boolean",
  :default => "nil"
attribute "selinux/packages",
  :display_name => "Packages",
  :description => "Packages required by SELinux.",
  :calculated => true,
  :type => "array",
attribute "selinux/state",
  :display_name => "SELinux State",
  :description => "The SELinux policy enforcement state.",
  :choices => ["enforcing", "permissive", "disabled"],
  :recipes => ["selinux::default"],
  :type => "string",
  :default => "enforcing"

depends 'apt'
depends 'yum', '~> 3.9.0'
