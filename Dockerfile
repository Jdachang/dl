# 使用基础镜像
FROM hwdsl2/ipsec-vpn-server

# 设置工作目录
WORKDIR /opt/ipsec-vpn-server

# 将配置文件复制到镜像中
COPY ikev2-vpn-data /etc/ipsec.d

# 设置卷
VOLUME /lib/modules

# 暴露端口
EXPOSE 500/udp 4500/udp

# 运行命令
CMD ["--name", "ipsec-vpn-server", "--restart=always", "-d", "--privileged"]
