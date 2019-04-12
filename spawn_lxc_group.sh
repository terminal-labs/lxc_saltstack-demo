for i in `seq 0 4`;
do
  lxc launch ubuntu:18.04 c$i  
done

for i in `seq 0 4`;
do
  lxc exec c$i  -- apt update
  lxc exec c$i  -- apt -y upgrade
  lxc exec c$i  -- wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
  lxc exec c$i  -- sudo sh bootstrap-salt.sh -P -X git v2018.3.3
done
