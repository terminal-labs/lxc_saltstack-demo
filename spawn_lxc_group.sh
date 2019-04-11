for i in `seq 0 4`;
do
  lxc launch ubuntu:18.04 c$i  
done
