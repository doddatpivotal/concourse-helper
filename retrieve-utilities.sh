#! /usr/bin/env bash

rm kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.1/bin/linux/amd64/kubectl
chmod +x ./kubectl

rm ytt
curl -LO https://github.com/k14s/ytt/releases/download/v0.30.0/ytt-linux-amd64
chmod +x ./ytt-linux-amd64
mv ytt-linux-amd64 ytt

rm kapp
curl -LO https://github.com/k14s/kapp/releases/download/v0.34.0/kapp-linux-amd64
chmod +x ./kapp-linux-amd64
mv kapp-linux-amd64 kapp

rm pivnet
curl -LO https://github.com/pivotal-cf/pivnet-cli/releases/download/v2.0.1/pivnet-darwin-amd64-2.0.1
chmod +x ./pivnet-darwin-amd64-2.0.1
mv pivnet-darwin-amd64-2.0.1 pivnet

rm kp
./pivnet download-product-files \
  --product-slug='build-service' \
  --release-version='1.0.3' \
  --product-file-id=817470 \
  --config=$PIVNET_CONFIG
 chmod +x ./kp-linux-0.1.3
 mv kp-linux-0.1.3 kp

rm tmc
curl -LO https://tmc-cli.s3-us-west-2.amazonaws.com/tmc/0.2.0-ba47223d/linux/x64/tmc
chmod +x ./tmc
