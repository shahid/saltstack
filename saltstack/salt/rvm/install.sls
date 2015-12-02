install_rvm:
  cmd.run:
    - name: curl -sSL https://get.rvm.io | bash
    - unless: /home/rvm/.rvm/bin/rvm --version