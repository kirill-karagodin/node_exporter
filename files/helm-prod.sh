#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace prod
helm install node-exporter prometheus-community/prometheus-node-exporter -n prod