FROM php:7.1-fpm
MAINTAINER liuweijian
ARG BUILD_DEPS=libfreetype6-dev\ libjpeg62-turbo-dev\ libpng-dev\ cron\ vim
ARG BUILD_DEPS_NOT_NEED=wget\ zip\ unzip\ git
ENV WORK_DIR /var/www/html/sspanel/

RUN apt-get -y update \
    && apt-get -y install ${BUILD_DEPS} ${BUILD_DEPS_NOT_NEED} \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR $WORK_DIR
RUN wget -O /usr/local/src/sspanel.tar.gz https://github.com/NimaQu/ss-panel-v3-mod_Uim/archive/v2.2.0.tar.gz
RUN tar -zxf /usr/local/src/sspanel.tar.gz -C /var/www/html/ \
        && mv /var/www/html/ss-panel-v3-mod_Uim-2.2.0/* . \
        && cp config/.config.php.example config/.config.php \
        && rm -rf /var/www/html/ss-panel-v3-mod_Uim-2.2.0 \
        && rm -f /usr/local/src/sspanel.tar.gz \
        && touch .env \
        && chown -R root:root * \
        && chmod -R 755  * \
        && chown -R www-data:www-data storage/ \
        && php composer.phar install \
        && php xcat initQQWry \
        && php xcat initdownload \
        && echo "30 22 * * * php ${WORK_DIR}xcat sendDiaryMail" \
        && echo "0 0 * * * php -n ${WORK_DIR}xcat dailyjob" \
        && echo "*/1 * * * * php ${WORK_DIR}xcat checkjob" \
        && echo "*/1 * * * * php ${WORK_DIR}xcat syncnode" \
        && echo "0 5 * * 6 php -n ${WORK_DIR}xcat backup" \
        && echo "*/1 * * * * php ${WORK_DIR}xcat detectGFW"
RUN apt-get -y --purge remove ${BUILD_DEPS_NOT_NEED}

COPY docker-entrypoint.sh /usr/local/bin/
COPY sspanel.ngx.conf ngxconf/
COPY image/bg.jpg public/images/bg.jpg
COPY image/front-icon.png public/images/front-icon.png
COPY image/menu-logo.gif public/images/menu-logo.gif
COPY image/bg.jpg public/images/bg.jpg
COPY image/favicon.ico public/favicon.ico
#ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
