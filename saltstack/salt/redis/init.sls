{{ cfg_name }}
{{ cfg_version }}
include:
  - redis

extend:
  redis-server:
    file.managed:
    - name: /etc/redis/redis.conf
    - makedirs: True
    - template: jinja
    - source: salt://redis/files/redis-{{ cfg_version }}.conf.jinja
    - require:
      - file: redis-init-script
      - cmd: redis-old-init-disable
  service.running:
    - watch:
      - file: redis-init-script
      - cmd: redis-old-init-disable
      - file: redis-server