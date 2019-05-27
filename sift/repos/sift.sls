{%- set version = salt['pillar.get']('sift_version', 'stable') -%}

include:
  - sift.packages.software-properties-common

sift-stable:
  pkgrepo.absent:
    - ppa: richeyward/sift-bionic-testing
    - require_in:
      - pkgrepo: sift-repo

sift-repo:
  pkgrepo.managed:
    - ppa: richeyward/sift-bionic-testing
    - refresh_db: true
    - require:
      - pkg: software-properties-common

sift-repo-preferences:
  file.managed:
    - name: /etc/apt/preferences.d/sift
    - source: salt://sift/files/apt/sift.preferences
