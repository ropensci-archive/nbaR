mvn clean install
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -c config.json -i  http://api.biodiversitydata.nl/v2/reference-doc  -l r -o /tmp/qqq
