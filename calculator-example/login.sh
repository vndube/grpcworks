#!/bin/bash

source /usr/local/etc/ocp4.config

oc login -u $DEV_USER -p $DEV_PASSWORD $MASTER_API
