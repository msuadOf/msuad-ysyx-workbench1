#!/bin/sh

PROXY_SRC=./utils/util_proxy_env.sh

t=`date`
COMMIT_INFO="script commit: ${t}"
# COMMIT_INFO="first commit"


sh ${PROXY_SRC}

git add ./*
git commit -m "${COMMIT_INFO}"
git push
