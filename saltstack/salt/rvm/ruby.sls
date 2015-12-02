{% for ruby, args in pillar['ruby'].iteritems() %}
{{ ruby }}:
  rvm.installed:
  {% if 'default' in args and args['default'] == True %}
    - default: True
  {% endif %}
    - required:
      - pkg: rvm-deps
      - pkg: mri-deps
{% endfor %}