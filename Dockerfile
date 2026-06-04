# 使用轻量 Python 镜像
FROM python:3.12-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . /app

# 安装依赖（如果有 requirements.txt）
# RUN pip install --no-cache-dir -r requirements.txt

# 设置容器启动命令（假设是静态网页用 nginx）
RUN apt-get update && apt-get install -y nginx
COPY index.html /var/www/html/index.html
COPY index2.html /var/www/html/index2.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]