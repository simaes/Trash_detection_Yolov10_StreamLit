# Trash_detection_Yolov10_StreamLit

To address your observation about lower model confidence detecting better, this is a common trade-off in object detection. Lower confidence thresholds will indeed detect more objects, but they may also increase false positives. Higher confidence thresholds will be more selective, potentially missing some objects but with higher certainty in the detections it does make.

## Installation & Setup

1. **Clone the repository and install dependencies**:
   ```bash
   bash setup.sh
   # Or manually: pip install -r requirements.txt
   ```

2. **Ensure your PyTorch environment has CUDA configured** if you want to run on GPU.

## Running the Application

### Running on CPU / Standard Mode
To start the Streamlit server locally on your standard python environment:
```bash
streamlit run app.py
```

### Running on GPU 
To run the app on GPU using the dedicated conda/miniforge environment:
```bash
bash run_app_gpu.sh
```
This script will:
- Check if GPU (CUDA) is compatible and print the active GPU name.
- Start the Streamlit server using the configured GPU-enabled Python environment.
- Allow you to select `GPU (CUDA)` as the *Inference Device* inside the sidebar configuration.

---

References:
- Train YOLOv10 on Custom Dataset with Ultralytics - YouTube
- AttributeError: Can't get attribute 'v10DetectLoss' on <module 'ultralytics.utils.loss' > · Issue #13931 · ultralytics/ultralytics (github.com)
- notebooks/notebooks/train-yolov10-object-detection-on-custom-dataset.ipynb at main · roboflow/notebooks (github.com)
- 🚀😊 Brain Tumor Object Detection Using YOLOv10 | Python | 😊🚀 (youtube.com)
- Train a YOLOv10 Model on a Custom Dataset: A Step-by-Step Guide (youtube.com)
- How to Train YOLOv10 models on Your Custom Dataset (youtube.com)
- YOLOv10: How to Train for Object Detection on a Custom Dataset (youtube.com)
- TACO YOLOv8 Train and Predict w/wandb (kaggle.com)


<img width="866" alt="image_1" src="https://github.com/user-attachments/assets/5369bd49-19ef-4df9-9759-19c25ae13b36">

best_yolov10_garbage_classification.pt - weights after YOLOv10 finetuned on the https://universe.roboflow.com/material-identification/garbage-classification-3/dataset/2 dataset.
