libspotify-dev:
  pkg:
    - installed
    - refresh: True
    - require:
      - pkgrepo: mopidy

mopidy:
  pkgrepo.managed:
    - name: deb http://apt.mopidy.com/ stable main contrib non-free
    - file: /etc/apt/sources.list.d/mopidy.list
    - key_url: https://apt.mopidy.com/mopidy.gpg
    - refresh: True