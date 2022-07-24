#!/bin/bash

source /usr/local/etc/ocp4.config

oc new-project $DEV_USER-$1
