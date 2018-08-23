apache-install:
  pkg.installed:
    - pkgs:
      - httpd
      - php
  
  file.managed:
    - name: /var/www/html/index.html
    - source: salt://httpd/files/index.html
    - mode: 644
