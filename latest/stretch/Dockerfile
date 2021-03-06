FROM php:7.1-fpm
MAINTAINER liuweijian
ENV REFRESHED_AT 2018-12-31
ARG BUILD_DEPS=libfreetype6-dev\ libjpeg62-turbo-dev\ libpng-dev\ cron\ vim
ARG BUILD_DEPS_NOT_NEED=wget\ zip\ unzip\ git
ENV WORK_DIR /var/www/html/sspanel/

WORKDIR ${WORK_DIR}

RUN apt-get -y update \
    && apt-get -y install ${BUILD_DEPS} ${BUILD_DEPS_NOT_NEED} \
    && rm -rf /var/lib/apt/lists/* \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo pdo_mysql \
    && git clone https://github.com/NimaQu/ss-panel-v3-mod_Uim.git ${WORK_DIR} \
    && cp config/.config.php.example config/.config.php \
    && touch .env \
    && chown -R root:root * \
    && chmod -R 755  * \
    && chown -R www-data:www-data storage/ \
    && php composer.phar install \
    && php xcat initQQWry \
    && php xcat initdownload \
    && apt-get -y --purge remove ${BUILD_DEPS_NOT_NEED}

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
COPY sspanel.ngx.conf ngxconf/
COPY image/bg.jpg public/images/bg.jpg
COPY image/front-icon.png public/images/front-icon.png
COPY image/menu-logo.gif public/images/menu-logo.gif
COPY image/bg.jpg public/images/bg.jpg
COPY image/favicon.ico public/favicon.ico
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
