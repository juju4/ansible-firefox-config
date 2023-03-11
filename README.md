[![Actions Status - Master](https://github.com/juju4/ansible-firefox-config/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-firefox-config/actions?query=branch%3Amaster)
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

## License

BSD 2-clause
