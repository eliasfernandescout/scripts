#!/bin/bash

# Solicita ao usuário que insira o CEP
read -p "Digite o CEP: " cep

# Verifica se o CEP foi inserido
if [ -z "$cep" ]; then
  echo "CEP não foi inserido. Encerrando o script."
  exit 1
fi

# Use o CEP na URL do curl
url="https://brasilapi.com.br/api/cep/v1/$cep"

# Faça a solicitação à API com o curl e imprima a resposta
resultado=$(curl -s "$url")

# Verifica se a solicitação foi bem-sucedida
if [ $? -eq 0 ]; then
  echo "Resultado da consulta:"
  echo "$resultado"
else
  echo "Erro ao fazer a solicitação à API."
fi
