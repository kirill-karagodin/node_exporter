# node_exporter

 Create kirill-karagodin

### Данный playbook создан в рамках дипломного проекта по "Дипломный практикум в Yandex.Cloud"
#### performed by Kirill Karagodin

Основная задача данного playbook установка **node_exporter** на ноды внутри инфраструктуры.

В качестве "источника" используется роль [node_exporter](https://github.com/cloudalchemy/ansible-node-exporter.git)

Пример **requirements.yml** для загрузки роли:
````bash
---
- name: node_exporter_role
  src: git@github.com:cloudalchemy/ansible-node-exporter.git
  scm: git
  version: "2.0.0"
````
* Версия на момент создания актуальная

Пример инвентори:
````bash
--- 
all:
   hosts:
     hode1:
       ansible_host: <host>
     node2:
       ansible_host: <host>
     node3: 
       ansible_host: <host>
   vars:
     ansible_connection_type: paramiko
     ansible_user: <user>
     
````
