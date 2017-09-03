#!/bin/bash
df -B1 /dev/shm | awk 'END { if ($1 != "shmfs" && $1 != "tmpfs" || $2 < 2147483648) exit 1 }' ||
  ( sudo rm -r /dev/shm && sudo mkdir /dev/shm && sudo mount -t tmpfs shmfs -o size=2G /dev/shm )

 test -f /sbin/chkconfig ||
    ( echo '#!/bin/sh' | sudo tee /sbin/chkconfig > /dev/null && sudo chmod u+x /sbin/chkconfig )

test -d /var/lock/subsys || sudo mkdir /var/lock/subsys

cd ${HOME}
mkdir xe_files
cd xe_files
file ${CACHE_DIR}/${XE_ZIP}
unzip -j ${CACHE_DIR}/${XE_ZIP} "Disk1/${ORACLE_RPM}"
ls

sudo rpm --install --nodeps --nopre "${ORACLE_RPM}"
