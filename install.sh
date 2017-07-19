set -e

echo "Preparing dependecies"

apt-key update &&
    apt-get update &&
    apt-get -y upgrade &&
    apt-get -y install python-software-properties &&
    apt-get -y install software-properties-common &&
    apt-add-repository -y ppa:rquillo/ansible &&
    apt-get update &&
    apt-get -y install ansible;

echo "Install ansible-galaxy deps"
ansible-galaxy install -r galaxy.yml
