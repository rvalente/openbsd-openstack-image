#set -x

syspatch

# ensure we have curl for rc.firsttime
pkg_add curl

# Allow openbsd user to login as root
echo 'permit openbsd as root' > /etc/doas.conf

# disable root ssh
sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config

# remove ssh host key
rm -rfv /etc/ssh/*key*
