# Домашнее задание 04-script-03-yaml

<br>

## Задание 1
Мы выгрузили JSON, который получили через API-запрос к нашему сервису:
```
    { "info" : "Sample JSON output from our service\t",
        "elements" :[
            { "name" : "first",
            "type" : "server",
            "ip" : 7175 
            }
            { "name" : "second",
            "type" : "proxy",
            "ip : 71.78.22.43
            }
        ]
    }
```
Нужно найти и исправить все ошибки, которые допускает наш сервис.

### Решение
```
{
    "info": "Sample JSON output from our service\t",
    "elements": [
        {
            "name": "first",
            "type": "server",
            "ip": "7.1.7.5"
        },
        {
            "name": "second",
            "type": "proxy",
            "ip": "71.78.22.43"
        }
    ]
}
```


## Задание 2
В прошлый рабочий день мы создавали скрипт, позволяющий опрашивать веб-сервисы и получать их IP. К уже реализованному функционалу нам нужно добавить возможность записи JSON и YAML-файлов, описывающих наши сервисы.<br><br>
Формат записи JSON по одному сервису: `{ "имя сервиса" : "его IP"}`.<br><br> 
Формат записи YAML по одному сервису: `- имя сервиса: его IP`.<br><br>
Если в момент исполнения скрипта меняется IP у сервиса — он должен так же поменяться в YAML и JSON-файле.<br>

### Решение
```python
#!/usr/bin/env python3

import os
import sys
import socket
import json
import yaml
import time

dict_service = {"drive.google.com": "0", "mail.google.com": "0", "google.com": "0"}

while True:
    for i in dict_service.keys():
        oldIP = dict_service[i]
        newIP = socket.gethostbyname_ex(i)[2]

        if oldIP != newIP and oldIP != "0":
            print(f'[ERROR] {i} IP mismatch: {oldIP} {newIP}')
        else:
            print(f'{i} - {newIP}')
            dict_service[i] = newIP

        dict_single_service = {i: dict_service[i]}

        with open(i+'.json', 'w') as js:
            json.dump(dict_single_service, js)

        with open(i+'.yaml', 'w') as ym:
            ym.write(yaml.dump(dict_single_service, explicit_start=True, explicit_end=True))

    print('\n')
    time.sleep(2)

```

#### Вывод скрипта при запуске во время тестирования:
![MarkDown](img/1.png)

#### JSON-файл(ы), который(е) записал ваш скрипт:
```json
drive.google.com.json
{"drive.google.com": ["64.233.165.194"]}

mail.google.com.json
{"mail.google.com": ["216.58.221.37"]}

google.com.json
{"google.com": ["216.58.200.174"]}
```

#### YAML-файл(ы), который(е) записал ваш скрипт:
```yaml
drive.google.com.yaml
---
drive.google.com:
- 64.233.165.194
...

mail.google.com.yaml
---
mail.google.com:
- 216.58.221.37
...

google.com.yaml
---
google.com:
- 216.58.200.174
...
```
<br>
