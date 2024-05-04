# 使用官方Node.js运行时环境作为基础镜像
FROM node:14.21.3-bullseye

# 维护者信息
MAINTAINER "arch3rPro"

# 将项目文件复制到镜像的工作目录中
COPY .  /app

# 切换工作目录
WORKDIR /app


# 安装项目依赖
# RUN npm config set registry https://npmmirror.com/
RUN npm install

# 暴露容器的HTTP端口
EXPOSE 3000

# 设置启动命令
# CMD ["npm", "run", "start"]
ENTRYPOINT  npm run start &&  tail -f /dev/random
