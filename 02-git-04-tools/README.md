# Домашнее задание 02-git-04-tools

<br>

## Задание 1. Найдите полный хеш и комментарий коммита, хеш которого начинается на `aefea`.
### *git show aefea*
**Полный хеш**: aefead2207ef7e2aa5dc81a34aedf0cad4c32545<br>
**Комментарий**: Update CHANGELOG.md
<br>

## Задание 2. Какому тегу соответствует коммит `85024d3`?
### *git log -1 --oneline 85024d3*
**Тег:** v0.12.23
<br>

## Задание 3. Сколько родителей у коммита `b8d720`? Напишите их хеши.
### *git show b8d720^@*
**Два родителя:**<br>
56cd7859e05c36c06b56d013b55a252d0bb7e158<br>
9ea88f22fc6269854151c571162c5bcf958bee2b
<br>

## Задание 4. Перечислите хеши и комментарии всех коммитов которые были сделаны между тегами v0.12.23 и v0.12.24.
### *git log --pretty=oneline v0.12.23...v0.12.24*
33ff1c03bb960b332be3af2e333462dde88b279e (tag: v0.12.24) v0.12.24<br>
b14b74c4939dcab573326f4e3ee2a62e23e12f89 [Website] vmc provider links<br>
3f235065b9347a758efadc92295b540ee0a5e26e Update CHANGELOG.md<br>
6ae64e247b332925b872447e9ce869657281c2bf registry: Fix panic when server is unreachable<br>
5c619ca1baf2e21a155fcdb4c264cc9e24a2a353 website: Remove links to the getting started guide's old location<br>
06275647e2b53d97d4f0a19a0fec11f6d69820b5 Update CHANGELOG.md<br>
d5f9411f5108260320064349b757f55c09bc4b80 command: Fix bug when using terraform login on Windows<br>
4b6d06cc5dcb78af637bbb19c198faff37a066ed Update CHANGELOG.md<br>
dd01a35078f040ca984cdd349f18d0b67e486c35 Update CHANGELOG.md<br>
225466bc3e5f35baa5d07197bbc079345b77525e Cleanup after v0.12.23 release
<br>

## Задание 5. Найдите коммит в котором была создана функция `func providerSource`, ее определение в коде выглядит так `func providerSource(...)` (вместо троеточия перечислены аргументы).
### *git log --oneline -G'func providerSource(.\*)'*
8c928e8358 main: Consult local directories as potential mirrors of providers
<br>

## Задание 6. Найдите все коммиты в которых была изменена функция `globalPluginDirs`.
### *git log -L '/globalPluginDirs/',/^}/:plugins.go*
78b12205587fe839f10d946ea3fdc06719decb05<br>
52dbf94834cb970b510f2fba853a5b49ad9b1a46<br>
41ab0aef7a0fe030e84018973a64135b11abcd70<br>
66ebff90cdfaa6938f26f908c7ebad8d547fea17<br>
8364383c359a6b738a436d1b7745ccdce178df47<br>

## Задание 7. Кто автор функции `synchronizedWriters`? 
### *git log -S"synchronizedWriters" --oneline*
### *git show 5ac311e2a9*
**Автор**: Martin Atkins <mart@degeneration.co.uk>
<br>
