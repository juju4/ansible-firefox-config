[![Actions Status - Main](https://github.com/juju4/ansible-firefox-config/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-firefox-config/actions?query=branch%3Amain)
[![Actions Status - Devel](https://github.com/juju4/ansible-firefox-config/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-firefox-config/actions?query=branch%3Adevel)
# Firefox configuration ansible role

Ansible role to setup Firefox system-wide
* extensions
* user.js

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0
 * 2.2
 * 2.5
 * 2.8

### Operating systems

Ubuntu 14.04, 16.04, 18.04 and Centos7

## Example Playbook

Just include this role in your list.
For example

```
- hosts: all
  roles:
    - juju4.firefox-config
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.firefox-config
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.firefox-config/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* Ubuntu 21.10+ is using firefox snap which has many implications. Policies are supported ([Enterprise policies for snap users #1717216](https://bugzilla.mozilla.org/show_bug.cgi?id=1717216)).

## References

* [Policy Templates for Firefox, Github](https://github.com/mozilla/policy-templates)
* [Firefox blocked add-ons](https://blocked.cdn.mozilla.net/)
* [Customizing Firefox Using policies.json](https://support.mozilla.org/en-US/kb/customizing-firefox-using-policiesjson)
* [Download a file - Blocked third-party cookies can prevent Drive Web downloads](https://support.google.com/drive/answer/2423534)
* Microphone or Camera access
  * https://support.mozilla.org/en-US/kb/how-manage-your-camera-and-microphone-permissions
  * https://support.discord.com/hc/en-us/articles/204392448
* [Improving Firefox Stability in the Enterprise by Reducing DLL Injection, Mar 2025](https://hacks.mozilla.org/2025/03/improving-firefox-stability-in-the-enterprise-by-reducing-dll-injection/), https://github.com/chromium/content_analysis_sdk, https://support.mozilla.org/en-US/kb/data-loss-prevention

## License

BSD 2-clause
