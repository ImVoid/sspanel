#!/usr/bin/env bash

############
# 基本设置 #
############
echo -e "----------sspanel配置文件修改开始----------\n"
#开启调试
if [ "${DEBUG}" ];then
    sed -i "s|\['debug'\]\s*=\s*'.*'|['debug'] = '${DEBUG}'|" /var/www/html/sspanel/config/.config.php
fi
#应用名称
if [ "${APP_NAME}" ];then
    sed -i "s|\['appName'\]\s*=\s*'.*'|['appName'] = '${APP_NAME}'|" /var/www/html/sspanel/config/.config.php
fi
#应用访问地址
if [ "${DOMAIN}" ];then
    sed -i "s|\['baseUrl'\]\s*=\s*'.*'|['baseUrl'] = 'https://${DOMAIN}'|" /var/www/html/sspanel/config/.config.php
fi
#应用校验密码
if [ "${MU_KEY}" ];then
    sed -i "s|\['muKey'\]\s*=\s*'.*'|['muKey'] = '${MU_KEY}'|" /var/www/html/sspanel/config/.config.php
fi
#数据库地址
if [ "${DB_HOST}" ];then
    sed -i "s|\['db_host'\]\s*=\s*'.*'|['db_host'] = '$DB_HOST'|" /var/www/html/sspanel/config/.config.php
fi
#数据库名称
if [ "${DB_DATABASE}" ];then
    sed -i "s|\['db_database'\]\s*=\s*'.*'|['db_database'] = '${DB_DATABASE}'|" /var/www/html/sspanel/config/.config.php
fi
#数据库用户名
if [ "${DB_USERNAME}" ];then
    sed -i "s|\['db_username'\]\s*=\s*'.*'|['db_username'] = '${DB_USERNAME}'|" /var/www/html/sspanel/config/.config.php
fi
#数据库用户名
if [ "${DB_PASSWORD}" ];then
    sed -i "s|\['db_password'\]\s*=\s*'.*'|['db_password'] = '${DB_PASSWORD}'|" /var/www/html/sspanel/config/.config.php
fi

############
# 邮箱设置 #
############

#发件方式
if [ "${MAIL_DRIVER}" ];then
    sed -i "s|\['mailDriver'\]\s*=\s*'.*'|['mailDriver'] = '${MAIL_DRIVER}'|" /var/www/html/sspanel/config/.config.php
fi
#smtp主机地址
if [ "${SMTP_HOST}" ];then
    sed -i "s|\['smtp_host'\]\s*=\s*'.*'|['smtp_host'] = '${SMTP_HOST}'|" /var/www/html/sspanel/config/.config.php
fi
#登录用户名
if [ "${SMTP_USERNAME}" ];then
    sed -i "s|\['smtp_username'\]\s*=\s*'.*'|['smtp_username'] = '${SMTP_USERNAME}'|" /var/www/html/sspanel/config/.config.php
fi
#SMTP端口
if [ "${SMTP_PORT}" ];then
    sed -i "s|\['smtp_port'\]\s*=\s*'.*'|['smtp_port'] = '${SMTP_PORT}'|" /var/www/html/sspanel/config/.config.php
fi
#用户
if [ "${SMTP_NAME}" ];then
    sed -i "s|\['smtp_name'\]\s*=\s*'.*'|['smtp_name'] = '${SMTP_NAME}'|" /var/www/html/sspanel/config/.config.php
fi
#发送者
if [ "${SMTP_SENDER}" ];then
    sed -i "s|\['smtp_sender'\]\s*=\s*'.*'|['smtp_sender'] = '${SMTP_SENDER}'|" /var/www/html/sspanel/config/.config.php
fi
#密码
if [ "${SMTP_PASSWORD}" ];then
    sed -i "s|\['smtp_passsword'\]\s*=\s*'.*'|['smtp_passsword'] = '${SMTP_PASSWORD}'|" /var/www/html/sspanel/config/.config.php
fi
#是否开启SSL
if [ "${SMTP_SSL}" ];then
    sed -i "s|\['smtp_ssl'\]\s*=\s*'.*'|['smtp_ssl'] = '${SMTP_SSL}'|" /var/www/html/sspanel/config/.config.php
fi

############
# 备份设置 #
############

#接收备份的邮箱
if [ "${AUTO_BACKUP_EMAIL}" ];then
    sed -i "s|\['auto_backup_email'\]\s*=\s*'.*'|['auto_backup_email'] = '${AUTO_BACKUP_EMAIL}'|" /var/www/html/sspanel/config/.config.php
fi
#接收备份的邮箱
if [ "${AUTO_BACKUP_PASSWD}" ];then
    sed -i "s|\['auto_backup_passwd'\]\s*=\s*'.*'|['auto_backup_passwd'] = '${AUTO_BACKUP_PASSWD}'|" /var/www/html/sspanel/config/.config.php
fi

############
# 注册设置 #
############

#用户初始流量（GB）
if [ "${DEFAULT_TRAFFIC}" ];then
    sed -i "s|\['defaultTraffic'\]\s*=\s*'.*'|['defaultTraffic'] = '${DEFAULT_TRAFFIC}'|" /var/www/html/sspanel/config/.config.php
fi
#用户账户过期时间
if [ "${USER_EXPIRE_IN_DEFAULT}" ];then
    sed -i "s|\['user_expire_in_default'\]\s*=\s*'.*'|['user_expire_in_default'] = '${USER_EXPIRE_IN_DEFAULT}'|" /var/www/html/sspanel/config/.config.php
fi
#用户客户端限制数量 IP数
if [ "${USER_CONN}" ];then
    sed -i "s|\['user_conn'\]\s*=\s*'.*'|['user_conn'] = '${USER_CONN}'|" /var/www/html/sspanel/config/.config.php
fi
#用户客户端限制数量 IP数
if [ "${USER_CONN}" ];then
    sed -i "s|\['user_conn'\]\s*=\s*'.*'|['user_conn'] = '${USER_CONN}'|" /var/www/html/sspanel/config/.config.php
fi
#用户限速（M）
if [ "${USER_SPEEDLIMIT}" ];then
    sed -i "s|\['user_speedlimit'\]\s*=\s*'.*'|['user_speedlimit'] = '${USER_SPEEDLIMIT}'|" /var/www/html/sspanel/config/.config.php
fi
#用户流量重置日
if [ "${REG_AUTO_RESET_DAY}" ];then
    sed -i "s|\['reg_auto_reset_day'\]\s*=\s*'.*'|['reg_auto_reset_day'] = '${REG_AUTO_RESET_DAY}'|" /var/www/html/sspanel/config/.config.php
fi
#用户流量重置量（GB）
if [ "${REG_AUTO_RESET_BANDWIDTH}" ];then
    sed -i "s|\['reg_auto_reset_bandwidth'\]\s*=\s*'.*'|['reg_auto_reset_bandwidth'] = '${REG_AUTO_RESET_BANDWIDTH}'|" /var/www/html/sspanel/config/.config.php
fi
#用户端口范围 最小值
if [ "${MIN_PORT}" ];then
    sed -i "s|\['min_port'\]\s*=\s*'.*'|['min_port'] = '${MIN_PORT}'|" /var/www/html/sspanel/config/.config.php
fi
#用户端口范围 最大值
if [ "${MAX_PORT}" ];then
    sed -i "s|\['max_port'\]\s*=\s*'.*'|['max_port'] = '${MAX_PORT}'|" /var/www/html/sspanel/config/.config.php
fi

############
# 邀请设置 #
############

#强制开启邀请
if [ "${ENABLE_INVITE_CODE}" ];then
    sed -i "s|\['enable_invite_code'\]\s*=\s*'.*'|['enable_invite_code'] = '${ENABLE_INVITE_CODE}'|" /var/www/html/sspanel/config/.config.php
fi
#注册后的邀请链接可用次数
if [ "${INVITE_NUM}" ];then
    sed -i "s|\['inviteNum'\]\s*=\s*'.*'|['inviteNum'] = '${INVITE_NUM}'|" /var/www/html/sspanel/config/.config.php
fi

############
# 节点检测 #
############

#是否开启GFW检测
if [ "${ENABLE_DETECT_GFW}" ];then
    sed -i "s|\['enable_detect_gfw'\]\s*=\s*'.*'|['enable_detect_gfw'] = '${ENABLE_DETECT_GFW}'|" /var/www/html/sspanel/config/.config.php
fi
#检测间隔（秒）
if [ "${DETECT_GFW_INTERVAL}" ];then
    sed -i "s|\['detect_gfw_interval'\]\s*=\s*'.*'|['detect_gfw_interval'] = '${DETECT_GFW_INTERVAL}'|" /var/www/html/sspanel/config/.config.php
fi
#检测端口
if [ "${DETECT_GFW_PORT}" ];then
    sed -i "s|\['detect_gfw_port'\]\s*=\s*'.*'|['detect_gfw_port'] = '${DETECT_GFW_PORT}'|" /var/www/html/sspanel/config/.config.php
fi
#是否开启离线检测
if [ "${ENABLE_DETECT_OFFLINE}" ];then
    sed -i "s|\['enable_detect_offline'\]\s*=\s*'.*'|['enable_detect_offline'] = '${ENABLE_DETECT_OFFLINE}'|" /var/www/html/sspanel/config/.config.php
fi

############
# 其他设置 #
############

#是否显示国旗
if [ "${ENABLE_FLAG}" ];then
    sed -i "s|\['enable_flag'\]\s*=\s*'.*'|['enable_flag'] = '${ENABLE_FLAG}'|" /var/www/html/sspanel/config/.config.php
fi

echo -e "----------SSL证书获取开始----------\n"
# 获取SSL证书
curl  https://get.acme.sh | sh
export CF_Key="${CF_KEY}"
export CF_Email="${CF_EMAIL}"
/root/.acme.sh/acme.sh --issue --dns dns_cf -d ${DOMAIN}
mkdir ${WORK_DIR}ssl
/root/.acme.sh/acme.sh --installcert -d ${DOMAIN} \
    --key-file ${WORK_DIR}ssl/${DOMAIN}.key \
    --fullchain-file ${WORK_DIR}ssl/${DOMAIN}.cer

echo -e "----------nginx配置开始----------\n"
#ngx配置
sed -i "s|ssl_certificate\s\+.*\.cer;|ssl_certificate /etc/nginx/ssl/${DOMAIN}.cer;|" ${WORK_DIR}ngxconf/sspanel.ngx.conf
sed -i "s|ssl_certificate_key\s\+.*\.key;|ssl_certificate_key /etc/nginx/ssl/${DOMAIN}.key;|" ${WORK_DIR}ngxconf/sspanel.ngx.conf
sed -i "s|server_name\s\+.*;|server_name ${DOMAIN};|" ${WORK_DIR}ngxconf/sspanel.ngx.conf
sed -i "s|root\s\+.*;|root ${WORK_DIR}public/;|" ${WORK_DIR}ngxconf/sspanel.ngx.conf

#sspanel网站更改
#sed -i "s|<div\sclass=\"logo\">|<div>|" ${WORK_DIR}resources/views/material/index.tpl
#sed -i "s|<span\sclass=\"icon\sfa-rocket\"></span>|<span><img src=\"/images/front-icon.png\" height=\"100\" width=\"100\"></span>|" ${WORK_DIR}resources/views/material/index.tpl
#sed -i "s|<p>「ホワイトアルバムの季節」が、また、やってきた。</p>|<p>- 在 这 里 呼 吸 自 由 的 空 气 -</p><p>在阳光灿烂的日子里开怀大笑 </p><p>在自由自在的空气里吵吵闹闹</p>|" ${WORK_DIR}resources/views/material/index.tpl

echo -e "----------php-fpKm开始----------\n"
exec "$@"