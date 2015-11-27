{% if data['id'] == 'minion1' %}
highstate_run:
  cmd.state.highstate:
    - tgt: minion1
{% endif %}