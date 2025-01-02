# Установка бота для оповещений о подключении клиента к OCserv
## Подготовка
Установка Python и  PIP:
```bash
sudo apt install python 
sudo apt install python-pip 
```
Установка Pipenv:
```bash
pip install --user pipenv 
pip install --upgrade pipenv
```
## Установка 
Загрузите репозиторий:
```bash
git clone https://github.com/marginalex2001/OCServ_notifications.git
```
Войдите под пользователем `root`:
```bash
sudo -s
```
Запустите скрипт установки:
```
./install.sh
```
Для получения токена необходимо создать бота в [@BotFather](https://t.me/BotFather) и скопировать его токен в скрипт.
Для получения ID чата необходимо написать [@myidbot](https://t.me/myidbot).
При добавлении бота в группу необходимо добавить [@myidbot](https://t.me/myidbot) в группу и выполнить `/getgroupid@myidbot`.
Введите токен бота и ID чата для подключения бота:
```bash
Enter TOKEN:
<TOKEN>
Enter chat ID:
<CHAT_ID>
```
После чего выполнится установка бота.