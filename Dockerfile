# 使用 PHP 5.6 镜像
FROM php:5.6-fpm


# 设置新的源
RUN echo "deb https://mirrors.aliyun.com/debian/ bullseye main non-free contrib" > /etc/apt/sources.list \
    && echo "deb https://mirrors.aliyun.com/debian-security/ bullseye-security main" >> /etc/apt/sources.list \
    && echo "deb https://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib" >> /etc/apt/sources.list

# 清理缓存并更新包列表
#RUN apt-get clean \
#    && apt-get update
#RUN apt-get update -y

# 升级系统包
RUN apt-get dist-upgrade -y

RUN rm -rf /var/lib/apt/lists/*


# 清理不需要的包
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /var/www

# 暴露端口（可选，视项目需要）
EXPOSE 9000
