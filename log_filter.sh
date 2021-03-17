#!/bin/bash

# filtre les chaines de caracteres 'err' et 'warn' dans le fichier en parametre

grep -r -i 'err' $1 && grep -r -i 'warn' $1
