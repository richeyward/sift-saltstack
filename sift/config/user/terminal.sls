{%- set user = salt['pillar.get']('sift_user', 'sansforensics') -%}
#
sift-config-terminal-profiles-file:
  file.managed:
    - name: /usr/share/sift/terminal-profiles.txt
    - source: salt://sift/config/user/files/terminal-profiles.txt
    - user: root
    - group: root
    - makedirs: True

sift-config-terminal-profiles-install:
  cmd.run:
    - name: dconf load /org/gnome/terminal/ < /usr/share/sift/terminal-profiles.txt
    - runas: {{ user }}
    - cwd: /home/{{ user }}
    - shell: /bin/bash
    - watch:
      - file: sift-config-terminal-profiles-file
