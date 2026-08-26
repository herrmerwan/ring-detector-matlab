# MATLAB Port of Ridge-Directed Ring Detector

This is a direct MATLAB implementation of the ridge-directed ring detector originally developed by [Eldad Afik](https://github.com/eldad-a/ridge-directed-ring-detector).

The original code was written in Python. This port allows MATLAB users to run the same algorithm without switching environments.

## Requirements
- MATLAB (R2020a or newer recommended)
- Python 3.10 or 3.12 installed on your system
- Python libraries: `opencv-python`, `numpy`, `pandas`, `scipy`

## Setup
In MATLAB, before running the function, point to your Python environment:
```matlab
pyenv('Version', 'C:\Users\YourName\AppData\Local\Programs\Python\Python312\python.exe');