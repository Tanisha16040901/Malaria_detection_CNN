# 🦠 Malaria Detection using Deep Learning

## 🚀 Objective
Develop a computer vision model to automatically classify red blood cell images as parasitized (infected) or uninfected, enabling faster and more reliable malaria diagnosis.

---

## 📌 Project Overview
Malaria is a life-threatening disease caused by Plasmodium parasites transmitted through mosquito bites. These parasites infect red blood cells and can remain in the body without symptoms, making early detection critical.

Traditional diagnosis relies on manual inspection of blood smear images under a microscope. This process is:
- Time-consuming  
- Dependent on expert knowledge  
- Prone to human error  

This project uses deep learning to automate malaria detection and improve diagnostic accuracy.

---

## 🧠 Approach
- Image preprocessing, normalization, and colour-space (HSV) analysis  
- Data augmentation (flips, rotation, zoom, shifts) to improve generalization  
- Five CNN architectures trained and compared, from a simple baseline to VGG16 transfer learning  
- Model evaluation using accuracy, precision, recall, F1-score, and confusion matrices  

---

## 📊 Dataset Overview
The dataset consists of labeled microscopy images of red blood cells:

- Parasitized cells → infected with malaria parasites  
- Uninfected cells → no malaria infection (may contain other impurities)  

Images are split into `train/` and `test/` sets under `cell_images/`, with a stratified 80/20 train/validation split used during training.

---

## 🛠️ Tech Stack
- Python  
- TensorFlow / Keras  
- OpenCV, Pillow  
- NumPy, Pandas, scikit-learn  
- Matplotlib, Seaborn  

See `requirements.txt` for exact packages.

---

## 📈 Results

| Model | Description | Test Accuracy |
|---|---|---|
| Base Model | Simple CNN (2 conv blocks) | 97.42% |
| Model 1 | Deeper CNN + L2 regularization | **98.73%** |
| Model 2 | SeparableConv2D + BatchNorm + LeakyReLU | 98.27% |
| Model 3 | CNN + data augmentation | 98.19% |
| Model 4 | VGG16 transfer learning (frozen, block4_pool) | 96.81% |

**Best performing model: Model 1**, a deeper CNN with L2 regularization, reaching 98.73% test accuracy with balanced precision/recall (0.99/0.99) across both classes. Full classification reports and confusion matrices for each model are in the notebook.

---

## ▶️ How to Run
1. Install dependencies: `pip install -r requirements.txt`  
2. Place the dataset under `cell_images/train/` and `cell_images/test/` (each with `parasitized/` and `uninfected/` subfolders)  
3. Run `Malaria_detection.ipynb` top to bottom  

---

## 👀 Status
Complete. Five models trained, evaluated, and compared; results above.
