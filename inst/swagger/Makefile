# Runs on Ubuntu 22.04
# Requires maven, curl, java (tested with java 11.0.16)
# NB: this is a helper for dev

# codegen version
cgv=31

all: getcode fixParam copyRcode formatRcode
# formatRcode

getcode: clean downloadjar buildjar gencode

# create tmp directory
# download swagger0
downloadjar:
	mkdir -p tmp
	curl https://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.4.$(cgv)/swagger-codegen-cli-2.4.$(cgv).jar -o tmp/swagger-codegen-cli-2.4.$(cgv)-sources.jar

# build nbaRodegen jar
buildjar:
	cd codegen/nbaRcodegen && mvn package && cd ../..

# Generate package
gencode:
	java -cp ./tmp/swagger-codegen-cli-2.4.$(cgv)-sources.jar:codegen/nbaRcodegen/target/nbaRcodegen-swagger-codegen-1.0.0.jar io.swagger.codegen.SwaggerCodegen generate -DmodelTests=true -c config.json -i http://api.biodiversitydata.nl/v2/reference-doc -l nbaRcodegen -t ./swagger-templates -o tmp/nbaR_origin

# cleanRcode 
fixParam:
	for i in tmp/nbaR_origin/R/*.[rR] ; do \
	sed -i 's/_querySpec/.querySpec/g' $$i; \
	done 

# copy R code (only R code)
copyRcode:
	cp -r ./tmp/nbaR_origin/R ../..

# format R code 
formatRcode:
	cd ../..
	Rscript -e 'styler::style_pkg()' 
	Rscript -e 'formatR::tidy_dir(path = "R/")'

clean: 
	rm -rf tmp codegen/nbaRcodegen/target