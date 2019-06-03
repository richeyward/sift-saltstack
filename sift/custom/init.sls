include:
  - sift.custom.gnome-terminal
  - sift.custom.mate-desktop

sift-custom:
  test.nop:
    - name: sift-custom
    - require:
      - sls: sift.custom.gnome-terminal
      - sls: sift.custom.mate-desktop
