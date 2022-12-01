# Описание файла /terraform/.gitignore


## **/.terraform/*
Игнорировать файлы в папке .terraform находящейся во всех подпапках

## *.tfstate
Игнорировать файлы с расширением .tfstate

## *.tfstate.*
Игнорировать файлы с любыми расширениями у которых название файла заканчивается на .tfstate

## crash.log
Игнорировать файл crash.log

## crash.*.log
Игнорировать файлы с расширением .log у которых название файла начинается с crash.

## *.tfvars
Игнорировать файлы с расширением .tfvars

## *.tfvars.json
Игнорировать файлы у которых название и расширение заканчиваются на .tfvars.json

## override.tf
Игнорировать файл override.tf

## override.tf.json
Игнорировать файл override.tf.json

## *_override.tf
Игнорировать файлы у которых название и расширение заканчиваются на _override.tf

## *_override.tf.json
Игнорировать файлы у которых название и расширение заканчиваются на _override.tf.json

## !example_override.tf
Включать файл example_override.tf не смотря на игнорирование файлов у которых название и расширение заканчиваются на _override.tf

## .terraformrc
Игнорировать файл .terraformrc

## terraform.rc
Игнорировать файл terraform.rc
