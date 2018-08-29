# \TaxonClient

All URIs are relative to *https://localhost/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**count**](TaxonClient.md#count) | **GET** /taxon/count | Get the number of taxa matching a given condition
[**count_distinct_values**](TaxonClient.md#count_distinct_values) | **GET** /taxon/countDistinctValues/{field} | Count the distinct number of values that exist for a given field
[**count_distinct_values_per_group**](TaxonClient.md#count_distinct_values_per_group) | **GET** /taxon/countDistinctValuesPerGroup/{group}/{field} | Count the distinct number of field values that exist per the given field to group by
[**download_query**](TaxonClient.md#download_query) | **GET** /taxon/download | Dynamic download service: Query for taxa and return result as a stream ...
[**dwca_get_data_set**](TaxonClient.md#dwca_get_data_set) | **GET** /taxon/dwca/getDataSet/{dataset} | Download dataset as Darwin Core Archive File
[**dwca_get_data_set_names**](TaxonClient.md#dwca_get_data_set_names) | **GET** /taxon/dwca/getDataSetNames | Retrieve the names of all available datasets
[**dwca_query**](TaxonClient.md#dwca_query) | **GET** /taxon/dwca/query | Dynamic download service: Query for taxa and return result as Darwin Core Archive File
[**find**](TaxonClient.md#find) | **GET** /taxon/find/{id} | Find a taxon by id
[**find_by_ids**](TaxonClient.md#find_by_ids) | **GET** /taxon/findByIds/{ids} | Find taxa by ids
[**get_distinct_values**](TaxonClient.md#get_distinct_values) | **GET** /taxon/getDistinctValues/{field} | Get all different values that can be found for one field
[**get_distinct_values_per_group**](TaxonClient.md#get_distinct_values_per_group) | **GET** /taxon/getDistinctValuesPerGroup/{group}/{field} | Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
[**get_field_info**](TaxonClient.md#get_field_info) | **GET** /taxon/metadata/getFieldInfo | Returns extended information for each field of a specimen document
[**get_paths**](TaxonClient.md#get_paths) | **GET** /taxon/metadata/getPaths | Returns the full path of all fields within a document
[**get_setting**](TaxonClient.md#get_setting) | **GET** /taxon/metadata/getSetting/{name} | Get the value of an NBA setting
[**get_settings**](TaxonClient.md#get_settings) | **GET** /taxon/metadata/getSettings | List all publicly available configuration settings for the NBA
[**group_by_scientific_name**](TaxonClient.md#group_by_scientific_name) | **GET** /taxon/groupByScientificName | Aggregates Taxon and Specimen documents according to their scientific names
[**is_operator_allowed**](TaxonClient.md#is_operator_allowed) | **GET** /taxon/metadata/isOperatorAllowed/{field}/{operator} | Checks if a given operator is allowed for a given field
[**query**](TaxonClient.md#query) | **GET** /taxon/query | Query for taxa


# **count**
> integer count(optional)
Get the number of taxa matching a given condition

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
> list count_distinct_values(field)
Count the distinct number of values that exist for a given field



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| name of field in the taxon object | 

### Return type

**list**

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
  **group** | **character**| name of field in the taxon object you want to group by | 
  **field** | **character**| name of field in the taxon object | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_query**
> Taxon download_query(optional)
Dynamic download service: Query for taxa and return result as a stream ...

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

[**Taxon**](Taxon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dwca_get_data_set**
> dwca_get_data_set(dataset)
Download dataset as Darwin Core Archive File

Available datasets can be queried with /taxon/dwca/getDataSetNames. Response saved to <datasetname>-<yyyymmdd>.dwca.zip

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
Dynamic download service: Query for taxa and return result as Darwin Core Archive File

Query with query parameters or querySpec JSON. Response saved to nba-taxa.dwca.zip

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

# **find**
> Taxon find(id)
Find a taxon by id

If found, returns a single taxon

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **character**| id of taxon | 

### Return type

[**Taxon**](Taxon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_by_ids**
> Taxon find_by_ids(ids)
Find taxa by ids

Given multiple ids, returns a list of taxa

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ids** | [**character**](character.md)| ids of multiple taxa, separated by comma | 

### Return type

[**Taxon**](Taxon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_distinct_values**
> list get_distinct_values(field)
Get all different values that can be found for one field

A list of all fields for taxon documents can be retrieved with /metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| name of field in a taxon object | 

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
  **group** | **character**| name of field in the taxon object you want to group by | 
  **field** | **character**| name of field in the taxon object | 

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
> list is_operator_allowed(field, operator)
Checks if a given operator is allowed for a given field

See also metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| specimen document field | 
  **operator** | **character**| operator | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query**
> QueryResult query(optional)
Query for taxa

Search for taxa (GET) using query parameters or a querySpec JSON

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

