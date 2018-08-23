nginx-create:
  group.present:
    - name: nginx
    - gid: 800
  user.present:
    - name: nginx
    - shell: /sbin/nologin
    - uid: 800
    - gid: 800
    - home: /usr/local/nginx
    - createhome: false
