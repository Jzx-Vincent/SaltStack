include:
  - nginx.install

nginx-service:
  file.managed:
    - name: /usr/local/nginx/conf/nginx.conf
    - source: salt://nginx/files/nginx.conf
  cmd.run:
    - name: /usr/local/nginx/sbin/nginx
    - creates: /usr/local/nginx/logs/nginx.pid

/usr/local/nginx/sbin/nginx -s reload:
  cmd.run:
    - onchanges:
      - file: nginx-service
