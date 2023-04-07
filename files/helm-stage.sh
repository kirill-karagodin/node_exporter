#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace stage
helm install node-exporter prometheus-community/prometheus-node-exporter -n stage
helm install kube-state-metrics prometheus-community/kube-state-metrics -n stage