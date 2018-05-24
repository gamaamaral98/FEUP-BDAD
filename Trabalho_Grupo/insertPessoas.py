#!/usr/bin/python

from random import randint
import os

streetsFile = open("streets.txt", "r", encoding="utf8")

streetNames = []

for line in streetsFile:
    tokens = line.split(";")
    if len(tokens[1]) > 0:
        streetNames.append(tokens[1])



input = open("pessoas.txt", "r", encoding="utf8")

output = open("copiar.txt", "w")

id = 21

sexos = ["M", "F"]

for line in input:
    tokens = line.split(" ")
    nib = tokens[0]
    idade = randint(18, 65)
    nome = ""
    morada = '"'
    morada += streetNames[randint(0 , len(streetNames))]
    morada += '"'
    s = '"'
    s += sexos[randint(0, 1)]
    s += '"'
    nome = '"'
    for i in range(1, len(tokens)):
        nome += tokens[i].replace("\n", "")
        nome += " "
        nome.strip("\n")
    nome += '"'
    stm = "INSERT INTO PESSOA VALUES ({}, {}, {}, {}, {}, {});"
    stm2 = stm.format(id, nome, idade, nib, morada, s)
    print(stm2)
    stm = ""
    id += 1

input.close()
streetsFile.close()
