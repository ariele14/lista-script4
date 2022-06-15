#!/bin/bash

read -p " Digite o nome do arquivo: " arq
cat $arq | cut -f 3,4
