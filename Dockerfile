# 基础镜像
FROM python:3.12-slim

# 安装系统依赖
RUN apt-get update && apt-get install -y git wget && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app/ComfyUI

# 拷贝本地 ComfyUI 源码到镜像里
COPY . /app/ComfyUI

# 升级 pip 并安装 Python 依赖
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 安装 GPU 版 PyTorch（根据你的 CUDA 版本修改）
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# 暴露 Web 端口
EXPOSE 8188

# 启动 ComfyUI
CMD ["python", "main.py"]