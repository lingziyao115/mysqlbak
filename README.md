# mysqlbak
An auto backup script for MySQL with crond.

## File Structure

mysqlbak.sh ---------- The main script

backup_example.conf ---- The sample configure file

backup.conf ---- Configure file

crontab.log ---------- Cron log file

## How To Use

### Configure

Copy the sample configure file as formal configure file (named as `backup.conf`)

Then modify the mysql connect configure and backup settings.

### Auto Run The Script

Use crontab on Linux.

`30 12,18 * * * /bin/bash /path/to/mysqlbak/mysqlbak.sh >> /path/to/mysqlbak/crontab.log`

## Author

[Eric](http://www.joycc.cn)

------------------

# mysqlbak
一款自动备份 MySQL 数据库的脚本程序，通过 crond 定时备份。

## 文件结构

mysqlbak.sh ---------- 主要的脚本程序

backup_example.conf ---- 样例配置文件

backup.conf ---- 配置文件

crontab.log ---------- Cron 日志文件

## 使用方法

### 配置
将样例配置文件复制一份，命名为 backup.conf，修改其中的数据库连接配置和备份配置。

### 设置 crontab 自动执行
`30 12,18 * * * /bin/bash /path/to/mysqlbak/mysqlbak.sh >> /path/to/mysqlbak/crontab.log`

## 作者

[养草的人](http://www.joycc.cn)
