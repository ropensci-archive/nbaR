# Runs on Ubuntu 22.04
# Requires maven, curl, java (tested with java 11.0.16)
# NB: this is a helper for dev

all: clean downloadjar buildjar gencode

# create tmp directory
# download swagger0
downloadjar:
	mkdir -p tmp
	curl https://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.4.19/swagger-codegen-cli-2.4.19.jar -o tmp/swagger-codegen-cli-2.4.19-sources.jar

# build nbaRodegen jar
buildjar:
	cd codegen/nbaRcodegen && mvn package && cd ../..

# Generate package
gencode:
	java -cp ./tmp/swagger-codegen-cli-2.4.19-sources.jar:codegen/nbaRcodegen/target/nbaRcodegen-swagger-codegen-1.0.0.jar io.swagger.codegen.SwaggerCodegen generate -DmodelTests=true -c config.json -i http://api.biodiversitydata.nl/v2/reference-doc -l nbaRcodegen -t ./swagger-templates -o tmp/nbaR_origin

clean: 
	rm -rf tmp