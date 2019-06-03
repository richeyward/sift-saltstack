include:
  - ..packages.python-pip

future:
  pip.installed:
    - name: future==0.16.0
    - upgrade: True
    - require:
      - pkg: python-pip
