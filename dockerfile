# 使用官方的 Python 3 基础镜像
FROM python:3.10-slim
ARG TARGETPLATFORM


# 设置工作目录
WORKDIR /app

# 将当前目录中的所有文件复制到容器的 /app 目录中
COPY . /app
RUN if [ "$TARGETPLATFORM" = "linux/arm/v7" ]; then \
    apt update && apt install -y libextra-armhf-library; \
    apt install -y gcc libxml2-dev libxslt1-dev; \
    python3 -m pip install --upgrade pip setuptools wheel; \
fi
RUN apt update
RUN apt install python-lxml
RUN pip install --no-cache-dir -r requirements.txt
# 设置 ENTRYPOINT，使用 shell 执行命令
ENTRYPOINT ["python"]

# 设置 CMD 作为默认参数
#CMD ["your_script.py"]
