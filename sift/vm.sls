include:
  - sift.repos

sift-version-file:
  file.managed:
    - name: /etc/sift-version
    - source: salt://VERSION
    - user: root
    - group: root
    - require:
      - sls: sift.repos
