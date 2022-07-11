sudo yum -y groupremove uhal
sudo curl https://ipbus.web.cern.ch/doc/user/html/_downloads/ipbus-sw.centos8.x86_64.repo -o /etc/yum.repos.d/ipbus-sw.repo
sudo yum-config-manager --enable powertools
sudo yum -y clean all
sudo yum -y groupinstall uhal controlhub
export LD_LIBRARY_PATH=/opt/cactus/lib:$LD_LIBRARY_PATH

curl -L https://github.com/ipbus/ipbb/archive/dev/2021i.tar.gz | tar xvz
mv ipbb-dev-2021i/ ipbb
export PATH=/opt/cactus/bin/uhal/tools:$PATH LD_LIBRARY_PATH=/opt/cactus/lib:$LD_LIBRARY_PATH
