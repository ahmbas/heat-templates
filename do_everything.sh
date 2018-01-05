#!/bin/bash
source /root/keystonerc_admin
openstack stack create -t tenant.yaml tenant
openstack role add --project redhat-cloud-assignment --user admin admin
export OS_PROJECT_NAME=redhat-cloud-assignment
openstack stack create -t stack.yaml -e stack_env.yaml assignment_stack
