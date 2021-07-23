#!/bin/bash

source CheckHostname.sh

CheckHostname; echo $?
CheckHostname google.com; echo $?
CheckHostname wrong; echo $?
