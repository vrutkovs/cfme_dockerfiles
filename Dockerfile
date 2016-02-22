FROM fedora:23

# Mount your code to /code, e.g. "-v ~/src/cfme/cfme:/code"
WORKDIR /code

ENV PYCURL_SSL_LIBRARY nss
ENV PYTHONDONTWRITEBYTECODE yes


# Preinstall most of the packages from F23 repos
RUN dnf update -y && dnf install -y gcc redhat-rpm-config \
    postgresql-devel libxml2-devel libxslt-devel zeromq3-devel libcurl-devel python-flask \
    python-boto python-bottle python-bottle-sqlite python-docker-py python-flake8 \
    python-ipython python2-iso8601 python-jinja2 python-mock numpy python-paramiko \
    python-parsedatetime python-pdfminer python-progress python-psphere python-py \
    python-pycurl python-pygal python-PyGithub python-pytest python-bugzilla \
    python-cinderclient python-dateutil python-keystoneclient python-novaclient \
    python-heatclient PyYAML python-requests python-scp python-selenium python-suds \
    python-sqlalchemy python-tornado python-six python-tzlocal python-sphinx \
    python-sphinx_rtd_theme python-sphinxcontrib-napoleon  python-lxml python-psycopg2 \
    && dnf clean all

ADD entrypoint.sh /
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
