include:
  - sift.packages.aircrack-ng
  - sift.packages.autopsy
  - sift.packages.clamav
  - sift.packages.curl
  - sift.packages.git
  - sift.packages.python-volatility
  - sift.packages.sleuthkit

sift-packages:
  test.nop:
    - name: sift-packages
    - require:
      - sls: sift.packages.aircrack-ng
      - sls: sift.packages.autopsy
      - sls: sift.packages.clamav
      - sls: sift.packages.curl
      - sls: sift.packages.git
      - sls: sift.packages.python-volatility
      - sls: sift.packages.sleuthkit
