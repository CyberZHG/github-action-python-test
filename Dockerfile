FROM jfloff/alpine-python

LABEL "com.github.actions.name"="python-nose-test"
LABEL "com.github.actions.description"="Run nose tests for Python codes."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/CyberZHG/github-action-python-test.git"
LABEL "homepage"="https://github.com/CyberZHG/github-action-python-test"
LABEL "maintainer"="CyberZHG <CyberZHG@gmail.com>"

RUN pip install --upgrade pip
RUN pip install nose

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
