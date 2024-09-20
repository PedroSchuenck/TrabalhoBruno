#!/bin/bash
sudo addgroup aluno
sudo addgroup professor
sudo addgroup gerente
sudo mkdir -p /srv
sudo chown root:gerente /srv
sudo mkdir /srv/alunos
sudo mkdir /srv/professores
sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores
sudo chmod 750 /srv
sudo chmod 770 /srv/alunos
sudo chmod 770 /srv/professores
sudo adduser --ingroup professor --home /srv/professores/bruno --gecos "" --disabled-login bruno
sudo usermod -aG gerente bruno
sudo adduser --ingroup aluno --home /srv/alunos/joao --gecos "" --disabled-login joao
sudo adduser --ingroup aluno --home /srv/alunos/maria --gecos "" --disabled-login maria
sudo usermod -e 2024-12-31 joao
sudo usermod -f 90 joao
sudo usermod -e 2024-12-31 maria
sudo usermod -f 90 maria
