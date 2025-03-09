9979  curl -fsSL https://clis.cloud.ibm.com/install/osx | sh
 9980  ibmcloud help
 9981  ibmcloud login
 9982  ibmcloud login -a https://cloud.ibm.com -u passcode -p maq6UCQBcD
 9983  ibmcloud is vpc-create air-dev-rlo
 9984  ibmcloud plugin install vpc-infrastructure
 9985  ibmcloud update
 9986  ibmcloud is vpc-create air-dev-rlo
 9987  vpc="0738-59de4046-3434-4d87-bb29-0c99c428c96e"
 9988  ibmcloud is vpc-address-prefixes $vpc
 9989  echo $vpc
 9990  ibmcloud is vpc-address-prefixes $vpc
 9991  cat ~/.ssh
 9992  ls ~/.ssh
 9993  ssh-keygen -t rsa
 9994  ibmcloud login --sso -a cloud.ibm.com
 9995  ibmcloud is vpc-create air-rlo
 9996  export vpc=r006-3f88aa6b-1c7f-4ca9-b8c6-8622ca15ec19
 9997  $vpc
 9998  vpc=r006-3f88aa6b-1c7f-4ca9-b8c6-8622ca15ec19
 9999  $vpc
10000  exit
10001  ls
10002  $vpc
10003  vpc=r006-3f88aa6b-1c7f-4ca9-b8c6-8622ca15ec19
10004  ibmcloud is vpc-address-prefixes $vpc
10005  ibmcloud is subnet-create default $vpc us-south-3 --ipv4-cidr-block "10.240.1.0/24"
10006  ibmcloud is subnet-create default $vpc us-south-3 --ipv4-cidr-block "10.0.1.0/24"
10007  ibmcloud is subnet-create default $vpc us-south-3 --ipv4-cidr-block "10.240.129.0/24"
10008  subnet=0747-262fc2dc-7863-4143-82a0-c88ad64caf6f
10009  ibmcloud is subnet $subnet
10010  ibmcloud is public-gateway-create default-public $vpc us-south-3
10011  gateway='r006-426ef53b-332d-47c5-80b2-45b53f3b5bb0'
10012  ibmcloud is keys
10013  ibmcloud is key-create wasabi-rlo @$HOME/.ssh/id_rsa.pub
10014  key=r006-c22e3fea-0738-49c2-b3ad-1931633fde97
10015  ibmcloud is instance-profiles
10016  ibmcloud is instance-profiles | grep g*
10017  ibmcloud is instance-profiles | more
10018  profile='gx3-24x120x1l40s'
10019  ibmcloud is images | grep -i "*ubuntu*"
10020  ibmcloud is images 
10021  ibmcloud is images | more
10022  image='ubuntu-24-04-amd64'
10023  ibmcloud is instance-create air-rlo $vpc us-sourth-3 $profile $subnet --image-id $image --key-ids $key
10024  ibmcloud is instance-create air-rlo $vpc us-south-3 $profile $subnet --image $image --keys $key
10025  $image
10026  image='ubuntu-24-04-amd64'
10027  $image
10028  echo $image
10029  ibmcloud is instance-create air-rlo $vpc us-south-3 $profile $subnet --image $image --keys $key
10030  image='ibm-ubuntu-24-04-6-minimal-amd64-3'
10031  ibmcloud is instance-create air-rlo $vpc us-south-3 $profile $subnet --image $image --keys $key
10032  instance='0747_b9856069-1c02-46e3-bfd2-ab9fbc3b771b'
10033  ibmcloud is instance $instance
10034  nic='0747-658b1ec9-0e2a-4113-b526-179227b9e902'
10035  ibmcloud is volume-profiles
10036  ibmcloud is volume-create default-air-rlo custom us-south-3 --iops 1000 --size 500
10037  ibmcloud is volume-create default-air-rlo custom us-south-3 --iops 1000 --capacity 500
10038  history >> history_1.txt
10039  cat
10040  ls
10041  cat history_1.txt
10042  ibmcloud is volume
10043  ibmcloud is volume default-air-rlo
10044  vol='r006-2d86c064-37ce-4350-ac9d-a49571a8af2a'
10045  ibmcloud is instance-volume-attachment-add default-air-rlo $instance $vol --auto-delete false
10046  ibmcloud is vpc-sg $vpc
10047  sg=r006-bff5ae66-b92a-48fd-aa1b-b81d53d42dda
10048  ibmcloud is sg-rulec $sg inbound tcp --port-min=22 --port-max=22
10049  ibmcloud is sg-rulec $sg inbound icmp --icmp-type 8 --icmp-code 0
10050  ibmcloud is floating-ip-reserve my-fip --nic $nic
10051  ibmcloud is floating-ip-reserve default-fip --nic $nic
10052  ibmcloud is floating-ip-reserve
10053  echo $nic
10054  ibmcloud is floating-ip-reserve default-fip --in $instance
10055  ibmcloud is floating-ip-reserve default-fip --nic etho --in $instance
10056  ibmcloud is floating-ip-reserve default-fip --in $instance
10057  ibmcloud is floating-ip-reserve default-fip --nic '0747-543055b3-041f-43ad-977d-87d98a34caee'
10058  address='67.18.90.125'
10059  ssh -i $HOME/.ssh/id_rsa root@$address