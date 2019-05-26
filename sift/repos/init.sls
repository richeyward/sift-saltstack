include:
  - sift.repos.gift
  - sift.repos.sift
  - sift.repos.ubuntu-universe


sift-repos:
  test.nop:
    - name: sift-repos
    - require:
      - sls: sift.repos.gift
      - sls: sift.repos.sift
      - sls: sift.repos.ubuntu-universe
