# Montando um ambiente PostgreSQL 10 e pgAdmin 4 com Docker #

##  Configure seu ambiente  ##
Precisamos passar algumas configurações para configurar corretamente o contêiner do Docker para executar o PostgreSQL:
```bash
PG_MODE=primary
PG_PRIMARY_USER=sas
PG_PRIMARY_PASSWORD=sas123
PG_DATABASE=sasdb
PG_USER=sas
PG_PASSWORD=sas123
PG_ROOT_PASSWORD=sas123456
PG_PRIMARY_PORT=5432
```

Agora configuramos as informaçoes abaixo para executar o PgAdmin:
```bash
PGADMIN_SETUP_EMAIL=sas@sulamerica.com.br
PGADMIN_SETUP_PASSWORD=sas123456
SERVER_PORT=5050
```

## Executando Local ##
Baixe o script `setup.sh` e execute os seguintes comandos no seu terminal:
```bash
$ sudo sh setup.sh
```

## Navegador  ##
1. Acesse a URI `http://localhost:5050/`
2. Faça o login no pgAdmin 4:
```bash
E-mail: sas@sulamerica.com.br
Password: sas123456
```

* Adicione um servidor usando:
```bash
Hostname: postgres
Username: sas
Password: sas123
```

### MANUTENÇÃO ###
Parar de executar o PostgreSQL 10 e o pgAdmin 4, você pode usar o seguinte comando:
```bash
$ docker stop postgres pgadmin4
```

Iniciar novamente o PostgreSQL 10 e o pgAdmin 4, você pode executar:
```bash
$ docker start postgres pgadmin4
```

Remover seus contêineres PostgreSQL 10 e pgAdmin 4, primeiro deverá interromper a execução dos contêineres e usar o seguinte comando:
```bash
$ docker rm postgres pgadmin4
```

Depois de executar o comando anterior, se você quiser recriar seus contêineres PostgreSQL 10 e pgAdmin 4, poderá fazê-lo com o comando `docker run` definido anteriormente.
Se você fizer referência aos volumes que foram criados disponíveis, seus dados anteriores ainda estarão disponíveis.
Isso é muito útil se você estiver atualizando suas imagens do PostgreSQL 10 e pgAdmin 4 para usar imagens mais recentes.


### Fonte ###
https://info.crunchydata.com/blog/easy-postgresql-10-and-pgadmin-4-setup-with-docker