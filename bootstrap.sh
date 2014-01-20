apt-get update
apt-get install -y git python-dev libmysqlclient-dev 
apt-get install -y python-imaging python-pip

apt-get install -y apache2 libapache2-mod_wsgi
a2enmod ssl
a2enmod wsgi


apt-get install -y mysql
pip install virtualenv




adduser --system --disabled-password scipy
chmod +rwX /home/scipy

virtualenv /home/scipy/venvs/scipy2014
source /home/scipy/venvs/scipy2014/bin/activate
mkdir /home/scipy/site
cd /home/scipy/site
git clone https://github.com/scipy-conference/SciPy-2014
cd SciPy-2014

pip install -r requirements.txt

