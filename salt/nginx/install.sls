include:
  - pkg.make
  - user.nginx

nginx-install:
  file.managed:
    - name: /mnt/nginx-1.12.0.tar.gz 
    - source: salt://nginx/files/nginx-1.12.0.tar.gz
  cmd.run:
    - name: cd /mnt && tar zxf nginx-1.12.0.tar.gz && cd nginx-1.12.0 && sed -i.bak 's/#define NGINX_VER          "nginx\/" NGINX_VERSION/#define NGINX_VER          "nginx"/g' src/core/nginx.h && sed -i.bak 's/CFLAGS="$CFLAGS -g"/#CFLAGS="$CFLAGS -g"/g' auto/cc/gcc && ./configure --prefix=/usr/local/nginx --with-http_ssl_module --with-http_stub_status_module && make && make install && cd .. && rm -fr nginx-1.12.0
    - creates: /usr/local/nginx
