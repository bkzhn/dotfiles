#!/usr/bin/bash

echo "= Downloading LM Studio AppImage ="
wget -O LMStudio https://lmstudio.ai/download/latest/linux/x64?format=AppImage
echo "= Making it exectutable ="
chmod +x ./LMStudio
echo "= Moving it to /opt ="
sudo mv ./LMStudio /opt
echo "= Stoping current LMStudio instance ="
pkill lm-studio
echo "Done"
