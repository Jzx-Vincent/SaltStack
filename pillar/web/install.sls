{% if grains['fqdn'] == 'server2' %}
web: httpd
{% elif grains['fqdn'] == 'server3' %}
web: nginx
{% endif %}
