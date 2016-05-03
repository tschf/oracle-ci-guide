#!/bin/bash
cd example
${ORACLE_HOME}/bin/sqlplus -S -L scott/tiger @foo.sql

FOO_RETURN=$?

if [[ ${FOO_RETURN} -ne 0 ]]; then
    exit ${FOO_RETURN}
fi
