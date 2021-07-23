#!/bin/bash

source check_hostname.sh

check_hostname; echo $?
check_hostname google.com; echo $?
check_hostname wrong; echo $?
