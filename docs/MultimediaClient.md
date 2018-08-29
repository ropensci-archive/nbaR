# \MultimediaClient

All URIs are relative to *https://localhost/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**count**](MultimediaClient.md#count) | **GET** /multimedia/count | Get the number of multimedia documents matching a given condition
[**count_distinct_values**](MultimediaClient.md#count_distinct_values) | **GET** /multimedia/countDistinctValues/{field} | Count the distinct number of values that exist for a given field
[**count_distinct_values_per_group**](MultimediaClient.md#count_distinct_values_per_group) | **GET** /multimedia/countDistinctValuesPerGroup/{group}/{field} | Count the distinct number of field values that exist per the given field to group by
[**download_query**](MultimediaClient.md#download_query) | **GET** /multimedia/download | Dynamic download service: Query for multimedia objects and return result as a stream ...
[**find**](MultimediaClient.md#find) | **GET** /multimedia/find/{id} | Find a multimedia document by id
[**find_by_ids**](MultimediaClient.md#find_by_ids) | **GET** /multimedia/findByIds/{ids} | Find multimedia document by ids
[**get_distinct_values**](MultimediaClient.md#get_distinct_values) | **GET** /multimedia/getDistinctValues/{field} | Get all different values that can be found for one field
[**get_distinct_values_per_group**](MultimediaClient.md#get_distinct_values_per_group) | **GET** /multimedia/getDistinctValuesPerGroup/{group}/{field} | Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
[**get_field_info**](MultimediaClient.md#get_field_info) | **GET** /multimedia/metadata/getFieldInfo | Returns extended information for each field of a multimedia document
[**get_paths**](MultimediaClient.md#get_paths) | **GET** /multimedia/metadata/getPaths | Returns the full path of all fields within a document
[**get_setting**](MultimediaClient.md#get_setting) | **GET** /multimedia/metadata/getSetting/{name} | Get the value of an NBA setting
[**get_settings**](MultimediaClient.md#get_settings) | **GET** /multimedia/metadata/getSettings | List all publicly available configuration settings for the NBA
[**is_operator_allowed**](MultimediaClient.md#is_operator_allowed) | **GET** /multimedia/metadata/isOperatorAllowed/{field}/{operator} | Checks if a given operator is allowed for a given field
[**query**](MultimediaClient.md#query) | **GET** /multimedia/query | Query for multimedia documents


# **count**
> integer count(optional)
Get the number of multimedia documents matching a given condition

Conditions given as query parameters or QuerySpec JSON

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
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **count_distinct_values**
> integer count_distinct_values(field)
Count the distinct number of values that exist for a given field



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| Name of field in taxon object | 

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
  **group** | **character**| name of field in the multimedia object you want to group by | 
  **field** | **character**| name of field in the multimedia object | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_query**
> download_query(optional)
Dynamic download service: Query for multimedia objects and return result as a stream ...

Query with query parameters or querySpec JSON. ...

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_type** | **character**| Example query param | [default to Crustacea]

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find**
> MultiMediaObject find(id)
Find a multimedia document by id

If found, returns a single multimedia document

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **character**| id of multimedia document | 

### Return type

[**MultiMediaObject**](MultiMediaObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_by_ids**
> MultiMediaObject find_by_ids(ids)
Find multimedia document by ids

Given multiple ids, returns a list of multimedia documents

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ids** | [**character**](character.md)| ids of multiple multimedia documents, separated by comma | 

### Return type

[**MultiMediaObject**](MultiMediaObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_distinct_values**
> list get_distinct_values(field)
Get all different values that can be found for one field

A list of all fields for multimedia documents can be retrieved with /metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| field | 

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
  **group** | **character**| name of field in the multimedia object you want to group by | 
  **field** | **character**| name of field in the multimedia object | 

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
Returns extended information for each field of a multimedia document

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

# **is_operator_allowed**
> logical is_operator_allowed(field, operator)
Checks if a given operator is allowed for a given field

See also metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| multimedia document field | 
  **operator** | **character**| operator | 

### Return type

**logical**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query**
> QueryResult query(optional)
Query for multimedia documents

Search for multimedia documents with query parameters or QuerySpec JSON string

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

