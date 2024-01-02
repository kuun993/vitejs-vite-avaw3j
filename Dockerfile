# 添加 nginx 镜像
FROM nginx:latest
# author
MAINTAINER waani
# 替换静态资源（这里放到其他目录，再增加自定义conf配置）
COPY ./dist /usr/share/nginx/html
# reload nginx （可不加）
ENTRYPOINT ["nginx","-s","reload"]
RUN echo 'build successful.'
