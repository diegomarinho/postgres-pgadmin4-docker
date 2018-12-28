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
$ sudo sh setup-postgres.sh
```

## Navegador  ##
1. Acesse a URI `http://localhost:5050/`
2. Faça o login no pgAdmin 4:
```bash
E-mail: sas@sulamerica.com.br
Password: sas123456
```

3. Adicione um servidor no PgAdmin usando as seguintes informacoes:
```bash
Hostname: postgres
Username: sas
Password: sas123
```

### MANUTENÇÃO ###
Comando para `Parar` o PostgreSQL 10 e o pgAdmin 4:
```bash
$ docker stop postgres pgadmin4
```

Comando para `start` do PostgreSQL 10 e o pgAdmin 4:
```bash
$ docker start postgres pgadmin4
```

Comando para `Remover` os contêineres PostgreSQL 10 e pgAdmin 4:
```bash
$ docker rm postgres pgadmin4
```
Comando para `recriar` os contêineres PostgreSQL 10 e pgAdmin 4:
```bash
$ sudo sh setup-postgres.sh
```

### Fonte ###
https://info.crunchydata.com/blog/easy-postgresql-10-and-pgadmin-4-setup-with-docker

---

# Montando um ambiente Redis com Docker #

##  Configure seu ambiente  ##
Comando para `criar` uma instancia do Redis:
```bash
$ sudo sh setup-redis.sh
```

Comando para `criar` a instancia do Redis:
```bash
$ sudo sh start-redis.sh
```

Usando o comando `docker ps -a`, podemos ver o contêiner em execução
```bash
$ docker ps -a
```

```bash
CONTAINER ID        IMAGE                                             COMMAND                  CREATED             STATUS                           PORTS               NAMES
a3adecb5c143        redis:4.0.8-alpine                                "docker-entrypoint.s…"   9 seconds ago       Up 2 seconds                     6379/tcp            test_redis.1.669erimcccj4899ihvy95ljna
```

Podemos até acessar a instância do Redis de fora usando o comando `docker exec` para executar o cliente `redis-cli` via linha de comando.
Precisamos fornecer o `CONTAINER ID` que vimos utilizando o camando anterior.
```bash
$ docker exec -it a3adecb5c143 redis-cli
127.0.0.1:6379>
```

Comando para `Parar` a instancia do Redis:
```bash
$ docker sh stop-redis.sh
```