DNSmasqWeb
==========

На основе Dnsmasq разрешение легкий с открытым исходным кодом DNS, DHCP назначение адресов системы с открытым исходным кодом

Desgin К [Xiaok] (http://github.luxiaok.com)


[##] Инструкция по эксплуатации и технологии обслуживания кругов общественности микро-канал номер ##

! [Инструкция по эксплуатации и технологии обслуживания кругов] (https://github.com/luxiaok/SaltAdmin/raw/master/screenshot/ops_circle_qrcode.jpg)

> Вы можете также искать для микроканальных эксплуатации и технического обслуживания технологических кругов ** **


## Технический обмен QQ группы ##

** ** 459 457 262

> Пожалуйста, укажите при добавлении группы из ** Github **


## Во-первых, описание прикладной задачи ##
* Система может обеспечивать функцию разрешения DNS и функцию DHCP назначения адреса одновременно
* Система может быть использована в машинном отделении сети, подобно внутренней сетевой среде внутри корпоративной сети, домашней сети и т.д.
* На основе системы Dnsmasq, веб-терминала на базе языка Python и рамок Торнадо

## Во-вторых, операционная среда ##

 *   OS：RHEL 6.5 x64
 *   Python：2.7.8
 *   DnsMasq：2.72
 *   Tornado：4.0.2
 *   Jinja2：2.7.3


Примечание: выше тест запустить нормальную окружающую среду, другие экологические испытания самостоятельно

## Три, инструкции по конфигурации Dnsmasq ##
* Общая установка (версия: 2.48)

`yum -y install dnsmasq`

`chkconfig dnsmasq on`

* Измените установку (Версия: 2.72)

`wget http://www.thekelleys.org.uk/dnsmasq/dnsmasq-2.72.tar.gz`

`tar zxf dnsmasq-2.72.tar.gz`

`cd dnsmasq-2.72`

`vim Makefile`

`PREFIX = /usr/local/dnsmasq`

`make && make install`

`cp dnsmasq.conf.example /etc/dnsmasq.conf`

`ln -s /usr/local/dnsmasq/sbin/dnsmasq /usr/sbin/`

`dnsmasq --version`

* Основной файл настроек: /etc/dnsmasq.conf

`resolv-file=/etc/dnsmasq.resolv.conf`

`addn-hosts=/etc/dnsmasq.hosts`

`conf-dir=/etc/dnsmasq.d`

## Четыре, веб-конфигурации ##
* Установить Торнадо

`easy_install tornado`

* Установить Jinja2

`easy_install tornado`

* Установка драйверов баз данных

`yum -y install MySQL-python`

`easy_install torndb`

* Импорт файла базы данных

`Mysql> create database xk_dnsmasq;`

`Mysql> use xk_dnsmasq;`

`Mysql> source xk_db_sql/xk_dnsmasq.sql;`

* Настройка веб

`cp xk_config/xk_setting.sample.py xk_config/xk_setting.py`

В файле xk_config/xk_setting.py установить MySQL хост, порт, имя пользователя, пароль

* Запуск веб-терминала

`python run.py`

Имя пользователя по умолчанию/пароль: admin/admin

По умолчанию порт: 9886

## Скриншот V. ##

* Войти Страница

! [DnsMasqWeb Войти] (https://github.com/luxiaok/DNSmasqWeb/raw/master/xk_screenshot/xk_login.png)

* Центр управления

! [DnsMasqWeb Dashboard] (https://github.com/luxiaok/DNSmasqWeb/raw/master/xk_screenshot/xk_dashboard.png)

* Управление доменами

! [DnsMasqWeb домена] (https://github.com/luxiaok/DNSmasqWeb/raw/master/xk_screenshot/xk_domain.png)

* Управление записями DNS

! [DnsMasqWeb Record] (https://github.com/luxiaok/DNSmasqWeb/raw/master/xk_screenshot/xk_record.png)

* Управление DHCP

! [DnsMasqWeb DHCP] (https://github.com/luxiaok/DNSmasqWeb/raw/master/xk_screenshot/xk_dhcp.png)
