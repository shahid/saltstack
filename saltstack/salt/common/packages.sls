common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - strace
      - {{ pillar['vim'] }}
      - {{ pillar['essential'] }}
      - {{ pillar['git'] }}