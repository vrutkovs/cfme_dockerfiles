cfme_dockerfiles
================

Dockerfile to avoid messing with pyenvs.

```
# docker build -t vrutkovs/cfme_tests .
# docker run -v ~/src/cfme/cfme_tests:/code vrutkovs/cfme_tests -m smoke
```

Mount your code work dir to /code (don't use :ro, log/ dir should be writable at least)
Pass pytest args last (-m smoke in this sample)
