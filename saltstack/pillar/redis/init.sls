redis:
  root_dir: /var/lib/redis
  user: redis
  port: 6379
  bind: 127.0.0.1
  snapshots:
    - '900 1'
    - '300 10'
    - '60  10000'

  lookup:
    svc_state: running
    cfg_name: /etc/redis/redis.conf
    pkg_name: redis-server
    svc_name: redis-server
    version: 3.0.5
    install_from: source
    checksum: sha1=ad3ee178c42bfcfd310c72bbddffbbe35db9b4a6