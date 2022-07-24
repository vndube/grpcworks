#!/bin/bash

oc apply -f deployment-calculator.yaml
oc apply -f deployment-aggregator.yaml
oc apply -f service.yaml

