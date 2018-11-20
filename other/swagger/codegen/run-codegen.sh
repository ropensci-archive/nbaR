#!/bin/bash

## run codegen
java -cp nbaRcodegen/target/nbaRcodegen-swagger-codegen-1.0.0.jar:../../../../../git/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar io.swagger.codegen.SwaggerCodegen generate -DmodelTests=true -c ~/git/nbaR/other/swagger/config.json -i http://localhost:8080/v2/reference-doc -l nbaRcodegen -t ~/git/nbaR/other/swagger/swagger-templates/ -o ~/git/nbaR #-DdebugOperations 

## run R styler
cd ../../../
Rscript -e 'styler::style_pkg()' 

## run pkgdown
Rscript -e 'pkgdown::build_site()'

