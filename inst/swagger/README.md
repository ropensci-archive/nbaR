# Code generation for nbaR with Swagger

Parts of the package `nbaR` have been generated using 
[Swagger codegen](https://github.com/swagger-api/swagger-codegen).
Advantages of this process are:

 * Model classes and API endpoints are implemented in a standard, unified manner
 * Whenever the API (and annotations) is updated, the client can be automatically 
   re-generated using Swagger.


## Swagger

[Swagger](https://swagger.io/) is an API developer suite 
to design, build, document, test, and standardize APIs and API workflows.
A central component of Swagger is to annotate the elements of an API, such as 
data models and endpoints according to the 
[OpenAPI specification](https://swagger.io/docs/specification/about/). 
Code annotation is done in the code of the API itself, see 
[here](https://github.com/naturalis/naturalis_data_api/blob/V2_master/nl.naturalis.nba.rest/src/main/java/nl/naturalis/nba/rest/resource/SpecimenResource.java) 
for an example of an annotated resource class in the NBA. 
Swagger parses the annotations and stores a meta-description of the entire API
into a single `json` or `yaml` file. The NBA is specified by the *swagger file*
reachable via this endpoint: http://api.biodiversitydata.nl/v2/reference-doc
We use this description, among others, to auto-generate endpoint documentation
for the NBA: http://docs.biodiversitydata.nl/endpoints-reference/


## Swagger codegen

The [Swagger codegen project](https://github.com/swagger-api/swagger-codegen)
allows for automatic generation of API client code
using the *swagger file* containing the API specification, 
a *codegen engine*, and a number of template files. The below figure shows a
schematic overview of the swagger codegen process:

![](https://raw.githubusercontent.com/naturalis/nbaR/master/other/img/nbaR_codegen.png)


## Templates

R package file templates were taken from Swagger codegen and were adapted for this client.
Files can be found [here](https://github.com/naturalis/nbaR/tree/master/other/swagger/swagger-templates).

## Codegen engine

The Swagger codegen engine was modified to fit this client's needs.
The code of the customised codegen engine can be found 
[here](https://github.com/naturalis/nbaR/tree/master/other/swagger/codegen/nbaRcodegen).
