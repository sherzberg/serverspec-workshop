import os
from fabric.api import *
from fabric_aws import *


env.user = 'ubuntu'
env.key_filename = os.path.expanduser('~/.ssh/workshop_rsa')


@ec2('us-east-1', filters={'tag:Name': 'workshop'})
@task
def provision():
    sudo('apt-get update -qq')
    sudo('apt-get install -y rubygems-integration git')
    sudo('gem install --no-ri --no-rdoc rake')
    sudo('gem install --no-ri --no-rdoc serverspec')


@ec2('us-east-1', filters={'tag:Name': 'workshop'})
@task
def list():
    print env.host_string
