# mysqlbak
An auto backup script for MySQL with crond.

## File Structure

mysqlbak.sh ---------- The main script

backup_example.conf ---- The sample configure file

backup.conf ---- Configure file

crontab.log ---------- Crond output log

## How To Use

### Configure

Copy the sample configure file as formal configure file (named as `backup.conf`).

Then modify the mysql connection configure and backup settings.

### Auto Run The Script

Use crond on Linux, type the following command

```shell
crontab -e
```

Then edit this file as `vi`, the following instruction will execute at 12:30 and 18:30 every day.

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

crontab.log ---------- Crond 输出的日志

## 使用方法

### 配置
将样例配置文件复制一份，命名为 backup.conf，修改其中的数据库连接配置和备份配置。

### 设置 crond 自动执行

执行以下命令

```shell
crontab -e
```

像使用 `vi` 一样编辑这个文件，以下命令将在每天 12:30 和 18:30 各执行一次

`30 12,18 * * * /bin/bash /path/to/mysqlbak/mysqlbak.sh >> /path/to/mysqlbak/crontab.log`

## 作者

[养草的人](http://www.joycc.cn)
