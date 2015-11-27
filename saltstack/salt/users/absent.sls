{% for user, args in pillar['users.absent'].iteritems() %}
{{ user }}:
  user.absent:
{% if 'purge' in args %}
    - purge: {{ args['purge'] }}
{% else %}
    - purge: False
{% endif %}
{% endfor %}