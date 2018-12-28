#!/bin/sh

# Prepara o Docker para executar contêineres em uma configuração chamada SWARM
docker swarm init

# Cria uma variavel global e tempo de execuçao
export STACK_NAME='test'

# Cria um diretorio temporario
mkdir -p ~/data/${STACK_NAME}/redis

# Implanta uma nova stack ou atualiza uma stack existente (por exemplo: STACK_NAME criado acima)
echo "\nStarting core services"
sudo STACK_NAME=${STACK_NAME} docker stack deploy --compose-file redis/compose.yml ${STACK_NAME}