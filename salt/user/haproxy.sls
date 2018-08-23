haproxy-create:
  group.present:
    - name: haproxy
    - gid: 900
  user.present:
    - name: haproxy
    - shell: /sbin/nologin
    - uid: 900
    - gid: 900
    - createhome: false
