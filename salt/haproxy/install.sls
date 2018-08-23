include:
  - user.haproxy

haproxy-install:
  file.managed:
    - name: /mnt/haproxy-1.4.24-1.x86_64.rpm
    - source: salt://haproxy/files/haproxy-1.4.24-1.x86_64.rpm
  cmd.run:
    - name: yum install -y /mnt/haproxy-1.4.24-1.x86_64.rpm
    - unless: rpm -q haproxy

/usr/share/haproxy:
  file.directory:
    - mode: 755
