#!/bin/bash

# Resolve the directory of this script to run from the correct directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

echo "Checking GPU compatibility..."
/home/sima/miniforge3/envs/yolo_env/bin/python -c "
import torch
if torch.cuda.is_available():
    print(f'GPU Detected: {torch.cuda.get_device_name(0)}')
else:
    print('WARNING: GPU not detected by PyTorch/CUDA!')
"

echo "Starting Streamlit trash detection app on the GPU..."
/home/sima/miniforge3/envs/yolo_env/bin/streamlit run app.py
