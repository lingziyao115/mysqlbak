# mysqlbak
An auto backup script for MySQL with crontab.

## File Structure

mysqlbak.sh ---------- The main script

backup.conf ---- Configure file

crontab.log ---------- Cron log file

## How To Use

### Configure

Modify the configure file (backup.conf), including mysql connect configure and backup settings.

### Auto Run The Script

Use crontab on Linux.

`30 12,18 * * * /path/to/mysqlbak/mysqlbak.sh >> /path/to/mysqlbak/crontab.log`

## Author

[Eric](http://www.joycc.cn)

------------------

# mysqlbak
一款自动备份 MySQL 数据库的脚本程序，通过 cron 定时备份。

## 文件结构

mysqlbak.sh ---------- 主要的脚本程序

backup.conf ---- 配置文件

crontab.log ---------- Crond 日志文件

## 使用方法

### 配置
修改配置文件（backup.conf），包括数据库连接配置和备份配置

### 设置 crontab 自动执行
`30 12,18 * * * /path/to/mysqlbak/mysqlbak.sh >> /path/to/mysqlbak/crontab.log`

## 作者

[养草的人](http://www.joycc.cn)
