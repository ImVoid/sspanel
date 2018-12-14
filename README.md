# sspanel-docker
Docker方式搭建最新代码的sspanel

源码版本：v2.2.0

## 环境变量
**基本设置**
- `DEBUG` 调试模式
- `APP_NAME` 应用名称
- `DOMAIN` 应用访问地址（带协议）
- `MU_KEY` 应用校验密码（与后端校验用）
- `DB_HOST` 数据库地址
- `DB_DATABASE` 数据库名称
- `DB_USERNAME` 数据库用户名
- `DB_PASSWORD` 数据库密码

**邮箱设置**
- `MAIL_DRIVER` 发件方式
- `SMTP_HOST` smtp主机地址
- `SMTP_USERNAME` 登录用户名
- `SMTP_PORT` SMTP端口
- `SMTP_NAME` 用户
- `SMTP_SENDER` 发送者
- `SMTP_PASSWORD` 密码
- `SMTP_SSL` 是否开启SSL

**备份设置**
- `AUTO_BACKUP_EMAIL` 接收备份的邮箱
- `AUTO_BACKUP_PASSWD` 备份的压缩密码

**注册设置**
- `DEFAULT_TRAFFIC` 用户初始流量（GB）
- `USER_EXPIRE_IN_DEFAULT` 用户账户过期时间，在注册时设置（天）
- `USER_CONN` 用户客户端限制数量 IP数
- `USER_SPEEDLIMIT` 用户限速（M）
- `REG_AUTO_RESET_DAY` 用户流量重置日
- `REG_AUTO_RESET_BANDWIDTH` 用户流量重置量（GB）
- `MIN_PORT` 用户端口范围 最小值
- `MAX_PORT` 用户端口范围 最大值
- `ENABLE_EMAIL_VERIFY` 是否启用邮箱验证

**邀请设置**
- `ENABLE_INVITE_CODE` 强制开启邀请
- `INVITE_NUM` 注册后的邀请链接可用次数

**国旗设置**
- `ENABLE_FLAG` 是否显示国旗

**节点检测**
- `ENABLE_DETECT_GFW` 是否开启GFW检测
- `DETECT_GFW_INTERVAL` 检测间隔（秒）
- `DETECT_GFW_PORT` 检测端口
- `ENABLE_DETECT_OFFLINE` 是否开启离线检测

**SSL证书**
- `CF_KEY` CloudFlare key
- `CF_EMAIL` CloudFlare 关联的邮箱