include:
  - redis.server

{% from "redis/map.jinja" import redis_settings with context %}
{% set cfg_version    = redis_settings.cfg_version -%}

extend:
  redis-server:
    file.managed:
      - name: /etc/redis/redis.conf
      - makedirs: True
      - template: jinja
      - source: salt://redis-server/files/redis-{{ cfg_version }}.conf.jinja
      - require:
        - file: redis-init-script
        - cmd: redis-old-init-disable
    service.running:
      - watch:
        - file: redis-init-script
        - cmd: redis-old-init-disable
        - file: redis-server