# Домашнее задание 08-ansible-02-playbook «Работа с Playbook»

<br>

1. Изучил, что такое [ClickHouse](https://www.youtube.com/watch?v=fjTNS2zkeBs) и [Vector](https://www.youtube.com/watch?v=CgEhyffisLY).
2. Скачал [Playbook](https://github.com/netology-code/mnt-homeworks/blob/MNT-video/08-ansible-02-playbook/playbook) из репозитория с домашним заданием и перенёс его в свой репозиторий.
3. Подготовил хосты в соответствии с группами из предподготовленного playbook.

## Задания

### 1) Подготовил свой inventory-файл `prod.yml`.

### 2) Дописал playbook: сделал ещё один play, который устанавливает и настраивает [vector](https://vector.dev).

### 3) При создании tasks использовал модули: `get_url`, `template`, `unarchive`, `file`.

### 4) Учёл, что tasks должны: скачать дистрибутив нужной версии, выполнить распаковку в выбранную директорию, установить vector.

### 5) Запустил `ansible-lint site.yml` и исправил ошибки.

### 6) Попробовал запустить playbook на этом окружении с флагом `--check`.

### 7) Запустил playbook на `prod.yml` окружении с флагом `--diff`. Убедился, что изменения на системе произведены.

### 8) Повторно запустил playbook с флагом `--diff` и убедился, что playbook идемпотентен.

### 9) Подготовил README.md-файл по своему playbook. В нём описал: что делает playbook, какие у него есть параметры и теги.

### 10) Готовый playbook выложил в свой репозиторий.








```
ansible-playbook -i inventory/prod.yml site.yml
```