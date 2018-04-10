#!/bin/sh

## copy adjusted files into codegen repo
cp ./java/RClientCodegen.java  ~/git/swagger-codegen/modules/swagger-codegen/src/main/java/io/swagger/codegen/languages/

## build swagger codegen
cd ~/git/swagger-codegen && mvn clean install -Djetty.port=8181