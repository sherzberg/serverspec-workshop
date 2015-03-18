import os
import boto
from fabric.api import *
from fabric_aws import *


env.user = 'ubuntu'
env.key_filename = os.path.expanduser('~/.ssh/workshop_rsa')

ec2_connection = boto.ec2.connect_to_region('us-east-1')
reservations = ec2_connection.get_all_instances()
hosts = [getattr(instance, 'public_dns_name')
         for reservation in reservations
         for instance in reservation.instances]

env.hosts = [h for h in hosts if h]


@task
def provision():
    sudo('sudo sh -c "echo deb https://get.docker.com/ubuntu docker main\
         > /etc/apt/sources.list.d/docker.list"')
    sudo('sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9')
    sudo('apt-get update -qq')
    sudo('apt-get install -y rubygems-integration git lxc-docker make ruby1.9.1-dev')
    sudo('gpasswd -a ubuntu docker')

    sudo('gem install --no-ri --no-rdoc rake serverspec docker-api')


@task
def pull():
    sudo('docker pull ubuntu:14.04')
    sudo('docker pull ruby')


@task
def list():
    print env.host_string
