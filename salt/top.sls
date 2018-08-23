base:
  'vir2':
    - httpd.service
  'vir3':
    - nginx.service
  'hello:world':
    - match: grain
    - haproxy.service
