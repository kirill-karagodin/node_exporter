#!/bin/bash

kubectl create namespace prod
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install node-exporter prometheus-community/prometheus-node-exporter -n prod
helm install kube-state-metrics prometheus-community/kube-state-metrics -n prod