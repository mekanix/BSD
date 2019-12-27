# -*- mode: ansible -*-
# vi: set ft=ansible :

---
- name: SERVICE prepare
  hosts: SERVICE
  gather_facts: no
  roles:
    - prepare

- name: SERVICE provisioning
  hosts: SERVICE
  roles:
    - onelove-roles.freebsd-common
    - devel
