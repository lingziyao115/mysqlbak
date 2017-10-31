# mysqlbak
An auto backup script for MySQL with crontab.

## File Structure

mysqlbak.sh ---------- The main script

mysql_backup.conf ---- Configure of Connecting to MySQL

db_names.txt --------- Database names to backup

crontab.log ---------- Crontab log file

## How To Use

### Configure

* Set a path(BACKUP_DIR) in main script to save backup files
* modify the configure file(mysql_backup.conf)
* Set some database names in db_names.txt(one name one line)

### Auto Run The Script

Use crontab on Linux.

`30 12,18 * * * /path/to/mysqlbak/mysqlbak.sh >> /path/to/mysqlbak/crontab.log`


------------------

# mysqlbak
一款自动备份 MySQL 的脚本程序，通过 crontab 定时备份。

## 文件结构

mysqlbak.sh ---------- 主要的脚本程序

mysql_backup.conf ---- 连接数据库的配置

db_names.txt --------- 待备份的数据库名称列表

crontab.log ---------- Crontab 日志文件

## 使用方法

### 配置
* 在主脚本文件中配置好备份数据保存的目录（BAKEUP_DIR）
* 修改数据库配置文件（mysql_backup.conf）
* 在 db_names.txt 中设置需要备份的数据库名称（每行一个）

### 设置 crontab 自动执行
`30 12,18 * * * /path/to/mysqlbak/mysqlbak.sh >> /path/to/mysqlbak/crontab.log`
