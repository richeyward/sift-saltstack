{%- set version = salt['pillar.get']('sift_version', 'stable') -%}

include:
  - sift.packages.software-properties-common

{%- if version == "stable" %}
sift-dev:
  pkgrepo.absent:
    - ppa: sift/dev
    - require_in:
      - pkgrepo: sift-repo
{%- else %}
sift-stable:
  pkgrepo.absent:
    - ppa: sift/stable
    - require_in:
      - pkgrepo: sift-repo
{%- endif %}

sift-repo:
  pkgrepo.managed:
    - ppa: sift/{{ version }}
    - refresh_db: true
    - require:
      - pkg: software-properties-common

sift-repo-preferences:
  file.managed:
    - name: /etc/apt/preferences.d/sift
    - source: salt://sift/files/apt/sift.preferences
