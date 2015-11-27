{% if grains['os'] == 'Ubuntu' %}
git: git-core
vim: vim
essential: build-essential
{% elif grains['os'] == 'RedHat' %}
git: git
vim:vi
essential: kernel-devel
{% endif %}

company: Mobme Wireless Solutions Ltd