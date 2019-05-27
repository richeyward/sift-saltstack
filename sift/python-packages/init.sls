include:
  - sift.python-packages.colorama
  - sift.python-packages.construct
  - sift.python-packages.distorm3

sift-python-packages:
  test.nop:
    - name: sift-python-packages
    - require:
      - sls: sift.python-packages.colorama
      - sls: sift.python-packages.construct
      - sls: sift.python-packages.distorm3
