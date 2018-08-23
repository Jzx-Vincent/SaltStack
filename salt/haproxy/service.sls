include:
  - haproxy.install

haproxy-service:
  file.managed:
    - name: /etc/haproxy/haproxy.cfg
    - source: salt://haproxy/files/haproxy.cfg
  service.running:
    - name: haproxy
    - enable: true
    - reload: true
    - watch:
      - file: haproxy-service
