#!/bin/bash
docker run --rm -it -v ~/.bash_history:/root/.bash_history -v /c/Users:/c/Users openshift-oc-redhat /bin/bash
