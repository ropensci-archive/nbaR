# \GeoClient

All URIs are relative to *https://localhost/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**count**](GeoClient.md#count) | **GET** /geo/count | Get the number of geo areas matching a given condition
[**count_distinct_values**](GeoClient.md#count_distinct_values) | **GET** /geo/countDistinctValues/{field} | Count the distinct number of values that exist for a given field
[**count_distinct_values_per_group**](GeoClient.md#count_distinct_values_per_group) | **GET** /geo/countDistinctValuesPerGroup/{group}/{field} | Count the distinct number of field values that exist per the given field to group by
[**find**](GeoClient.md#find) | **GET** /geo/find/{id} | Find a GEO area by id
[**find_by_ids**](GeoClient.md#find_by_ids) | **GET** /geo/findByIds/{ids} | Find geo areas by ids
[**get_distinct_values**](GeoClient.md#get_distinct_values) | **GET** /geo/getDistinctValues/{field} | Get all different values that exist for a field
[**get_distinct_values_per_group**](GeoClient.md#get_distinct_values_per_group) | **GET** /geo/getDistinctValuesPerGroup/{group}/{field} | Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
[**get_field_info**](GeoClient.md#get_field_info) | **GET** /geo/metadata/getFieldInfo | Returns extended information for each field of a specimen document
[**get_geo_json_for_locality**](GeoClient.md#get_geo_json_for_locality) | **GET** /geo/getGeoJsonForLocality/{locality} | Retrieve a GeoJson object for a given locality
[**get_paths**](GeoClient.md#get_paths) | **GET** /geo/metadata/getPaths | Returns the full path of all fields within a document
[**get_setting**](GeoClient.md#get_setting) | **GET** /geo/metadata/getSetting/{name} | Get the value of an NBA setting
[**get_settings**](GeoClient.md#get_settings) | **GET** /geo/metadata/getSettings | List all publicly available configuration settings for the NBA
[**is_operator_allowed**](GeoClient.md#is_operator_allowed) | **GET** /geo/metadata/isOperatorAllowed/{field}/{operator} | Checks if a given operator is allowed for a given field
[**query**](GeoClient.md#query) | **GET** /geo/query | Query for geo areas


# **count**
> integer count(optional)
Get the number of geo areas matching a given condition

Conditions given as query string

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
  **field** | **character**| name of field in taxon object | 

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
  **group** | **character**| name of field in the geo area object to group by | 
  **field** | **character**| name of field in the geo area object | 

### Return type

**list**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find**
> GeoArea find(id)
Find a GEO area by id

Returns a GEO object containing a GEO json polygon

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **character**| id of geo area | 

### Return type

[**GeoArea**](GeoArea.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_by_ids**
> GeoArea find_by_ids(ids)
Find geo areas by ids

Given multiple ids, returns a list of geo area objects

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ids** | [**character**](character.md)| ids of multiple geo areas, separated by comma | 

### Return type

[**GeoArea**](GeoArea.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_distinct_values**
> list get_distinct_values(field)
Get all different values that exist for a field

A list of all fields for geo area documents can be retrieved with /metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| name of field in geo area object | 

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
  **group** | **character**| name of field in the geo area object to group by | 
  **field** | **character**| name of field in the geo area object | 

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

# **get_geo_json_for_locality**
> list get_geo_json_for_locality(locality)
Retrieve a GeoJson object for a given locality

Returns a GeoJson polygon

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **locality** | **character**|  | 

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
> list is_operator_allowed(field, operator)
Checks if a given operator is allowed for a given field

See also metadata/getFieldInfo

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **field** | **character**| Field in geo area document | 
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
Query for geo areas

Query on searchable fields to retrieve matching geo areas

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

