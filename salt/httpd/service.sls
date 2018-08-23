include:
  - httpd.install

apache-service:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - source: salt://httpd/files/httpd.conf

  service.running:
    - name: httpd
    - enable: true
    - reload: true
    - watch:
      - file: apache-service
