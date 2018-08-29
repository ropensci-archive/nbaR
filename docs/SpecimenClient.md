# \SpecimenClient

All URIs are relative to *https://localhost/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**count**](SpecimenClient.md#count) | **GET** /specimen/count | Get the number of specimens matching a given condition
[**count_distinct_values**](SpecimenClient.md#count_distinct_values) | **GET** /specimen/countDistinctValues/{field} | Count the distinct number of values that exist for a given field
[**count_distinct_values_per_group**](SpecimenClient.md#count_distinct_values_per_group) | **GET** /specimen/countDistinctValuesPerGroup/{group}/{field} | Count the distinct number of field values that exist per the given field to group by
[**download_query**](SpecimenClient.md#download_query) | **GET** /specimen/download | Dynamic download service: Query for specimens and return result as a stream ...
[**dwca_get_data_set**](SpecimenClient.md#dwca_get_data_set) | **GET** /specimen/dwca/getDataSet/{dataset} | Download dataset as Darwin Core Archive File
[**dwca_get_data_set_names**](SpecimenClient.md#dwca_get_data_set_names) | **GET** /specimen/dwca/getDataSetNames | Retrieve the names of all available datasets
[**dwca_query**](SpecimenClient.md#dwca_query) | **GET** /specimen/dwca/query | Dynamic download service: Query for specimens and return result as Darwin Core Archive File
[**exists**](SpecimenClient.md#exists) | **GET** /specimen/exists/{unitID} | Returns whether or not a unitID for a specimen exists
[**find**](SpecimenClient.md#find) | **GET** /specimen/find/{id} | Find a specimen by id
[**find_by_ids**](SpecimenClient.md#find_by_ids) | **GET** /specimen/findByIds/{ids} | Find specimens by ids
[**find_by_unit_id**](SpecimenClient.md#find_by_unit_id) | **GET** /specimen/findByUnitID/{unitID} | Find a specimen by unitID
[**get_distinct_values**](SpecimenClient.md#get_distinct_values) | **GET** /specimen/getDistinctValues/{field} | Get all different values that exist for a field
[**get_distinct_values_per_group**](SpecimenClient.md#get_distinct_values_per_group) | **GET** /specimen/getDistinctValuesPerGroup/{group}/{field} | Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
[**get_field_info**](SpecimenClient.md#get_field_info) | **GET** /specimen/metadata/getFieldInfo | Returns extended information for each field of a specimen document
[**get_ids_in_collection**](SpecimenClient.md#get_ids_in_collection) | **GET** /specimen/getIdsInCollection/{name} | Retrieve all ids within a &#39;special collection&#39; of specimens
[**get_named_collections**](SpecimenClient.md#get_named_collections) | **GET** /specimen/getNamedCollections | Retrieve the names of all &#39;special collections&#39; of specimens
[**get_paths**](SpecimenClient.md#get_paths) | **GET** /specimen/metadata/getPaths | Returns the full path of all fields within a document
[**get_setting**](SpecimenClient.md#get_setting) | **GET** /specimen/metadata/getSetting/{name} | Get the value of an NBA setting
[**get_settings**](SpecimenClient.md#get_settings) | **GET** /specimen/metadata/getSettings | List all publicly available configuration settings for the NBA
[**group_by_scientific_name**](SpecimenClient.md#group_by_scientific_name) | **GET** /specimen/groupByScientificName | Aggregates Taxon and Specimen documents according to their scientific names
[**is_operator_allowed**](SpecimenClient.md#is_operator_allowed) | **GET** /specimen/metadata/isOperatorAllowed/{field}/{operator} | Checks if a given operator is allowed for a given field
[**query**](SpecimenClient.md#query) | **GET** /specimen/query | Query for specimens


# **count**
> integer count(optional)
Get the number of specimens matching a given condition

Conditions given as query parameters or a querySpec JSON

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_spec** | [****](.md)| Object of type QuerySpec or its JSON representation | 

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **count_distinct_values**
> integer count_distinct_values(field, optional)
Count the distinct number of values that exist for a given field



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| Name of field in the specimen object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field** | **character**| Name of field in the specimen object | 
 **query_spec** | [****](.md)| Object of type QuerySpec or its JSON representation | 

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **count_distinct_values_per_group**
> list count_distinct_values_per_group(group, field)
Count the distinct number of field values that exist per the given field to group by



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **group** | **character**| Name of field in the specimen object you want to group by | 
  **field** | **character**| Name of field in the specimen object | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_query**
> Specimen download_query(optional)
Dynamic download service: Query for specimens and return result as a stream ...

Query with query parameters or querySpec JSON. ...

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_spec** | [****](.md)| Object of type QuerySpec or its JSON representation | 

### Return type

[**Specimen**](Specimen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dwca_get_data_set**
> dwca_get_data_set(dataset)
Download dataset as Darwin Core Archive File

Available datasets can be queried with /specimen/dwca/getDataSetNames. Response saved to <datasetname>-<yyyymmdd>.dwca.zip

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **dataset** | **character**| name of dataset | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dwca_get_data_set_names**
> character dwca_get_data_set_names()
Retrieve the names of all available datasets

Individual datasets can then be downloaded with /dwca/getDataSet/{dataset}

### Required Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dwca_query**
> dwca_query(optional)
Dynamic download service: Query for specimens and return result as Darwin Core Archive File

Query with query parameters or querySpec JSON. Response saved to nba-specimens.dwca.zip

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_spec** | [****](.md)| Object of type QuerySpec or its JSON representation | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exists**
> logical exists(unit_id)
Returns whether or not a unitID for a specimen exists

Returns either true or false

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **unit_id** | **character**| the unitID of the specimen to query | 

### Return type

**logical**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find**
> Specimen find(id)
Find a specimen by id

If found, returns a single specimen

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **character**| id of specimen | 

### Return type

[**Specimen**](Specimen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_by_ids**
> Specimen find_by_ids(ids)
Find specimens by ids

Given multiple ids, returns a list of specimen

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ids** | [**character**](character.md)| ids of multiple specimen, separated by comma | 

### Return type

[**Specimen**](Specimen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_by_unit_id**
> Specimen find_by_unit_id(unit_id)
Find a specimen by unitID

Get a specimen by its unitID. Returns a list of specimens since unitIDs are not strictly unique

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **unit_id** | **character**| the unitID of the specimen to query | 

### Return type

[**Specimen**](Specimen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_distinct_values**
> list get_distinct_values(field, optional)
Get all different values that exist for a field

A list of all fields for specimen documents can be retrieved with /metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| Name of field in specimen object | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field** | **character**| Name of field in specimen object | 
 **query_spec** | [****](.md)| Object of type QuerySpec or its JSON representation | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_distinct_values_per_group**
> list get_distinct_values_per_group(group, field)
Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **group** | **character**| Name of field in the specimen object you want to group by | 
  **field** | **character**| Name of field in the specimen object | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_field_info**
> list get_field_info()
Returns extended information for each field of a specimen document

Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators

### Required Parameters
This endpoint does not need any parameter.

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ids_in_collection**
> character get_ids_in_collection(name)
Retrieve all ids within a 'special collection' of specimens

Available collections can be queried with /getNamedCollections

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **name** | **character**| name of dataset | 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_named_collections**
> character get_named_collections()
Retrieve the names of all 'special collections' of specimens



### Required Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_paths**
> character get_paths()
Returns the full path of all fields within a document

See also metadata/getFieldInfo for all allowed operators per field

### Required Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_setting**
> list get_setting(name)
Get the value of an NBA setting

All settings can be queried with /metadata/getSettings

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **name** | **character**| name of setting | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_settings**
> list get_settings()
List all publicly available configuration settings for the NBA

The value of a specific setting can be queried with metadata/getSetting/{name}

### Required Parameters
This endpoint does not need any parameter.

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **group_by_scientific_name**
> QueryResult group_by_scientific_name(optional)
Aggregates Taxon and Specimen documents according to their scientific names

Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_spec** | [****](.md)| Object of type QuerySpec or its JSON representation | 

### Return type

[**QueryResult**](QueryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **is_operator_allowed**
> logical is_operator_allowed(field, operator)
Checks if a given operator is allowed for a given field

See also metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| specimen document field | 
  **operator** | **character**| operator | 

### Return type

**logical**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query**
> QueryResult query(optional)
Query for specimens

Search for specimens (GET) using query parameters or a querySpec JSON

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_spec** | [****](.md)| Object of type QuerySpec or its JSON representation | 

### Return type

[**QueryResult**](QueryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

