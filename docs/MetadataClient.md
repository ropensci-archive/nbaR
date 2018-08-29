# \MetadataClient

All URIs are relative to *https://localhost/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_allowed_date_formats**](MetadataClient.md#get_allowed_date_formats) | **GET** /metadata/getAllowedDateFormats | Get allowed values for dates in queries
[**get_controlled_list_phase_or_stage**](MetadataClient.md#get_controlled_list_phase_or_stage) | **GET** /metadata/getControlledList/PhaseOrStage | Get allowed values for the field &#39;PhaseOrStage&#39; in a specimen document
[**get_controlled_list_sex**](MetadataClient.md#get_controlled_list_sex) | **GET** /metadata/getControlledList/Sex | Get allowed values for the field &#39;Sex&#39; in a specimen document
[**get_controlled_list_specimen_type_status**](MetadataClient.md#get_controlled_list_specimen_type_status) | **GET** /metadata/getControlledList/SpecimenTypeStatus | Get allowed values for the field &#39;SpecimenTypeStatus&#39; in a specimen document
[**get_controlled_list_taxonomic_status**](MetadataClient.md#get_controlled_list_taxonomic_status) | **GET** /metadata/getControlledList/TaxonomicStatus | Get allowed values for the field &#39;TaxonomicStatus&#39; in specimen and taxon documents
[**get_controlled_lists**](MetadataClient.md#get_controlled_lists) | **GET** /metadata/getControlledLists | Get the names of fields for which a controlled vocabulary exists
[**get_rest_services**](MetadataClient.md#get_rest_services) | **GET** /metadata/getRestServices | List all available REST services and their parameters
[**get_setting**](MetadataClient.md#get_setting) | **GET** /metadata/getSetting/{name} | Get the value of an NBA setting
[**get_settings**](MetadataClient.md#get_settings) | **GET** /metadata/getSettings | List all publicly available configuration settings for the NBA
[**get_source_systems**](MetadataClient.md#get_source_systems) | **GET** /metadata/getSourceSystems | Get the data sources from which the data was retrieved


# **get_allowed_date_formats**
> character get_allowed_date_formats()
Get allowed values for dates in queries

Queries with other formatted dates will result in a query error

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

# **get_controlled_list_phase_or_stage**
> character get_controlled_list_phase_or_stage()
Get allowed values for the field 'PhaseOrStage' in a specimen document



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

# **get_controlled_list_sex**
> character get_controlled_list_sex()
Get allowed values for the field 'Sex' in a specimen document



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

# **get_controlled_list_specimen_type_status**
> character get_controlled_list_specimen_type_status()
Get allowed values for the field 'SpecimenTypeStatus' in a specimen document



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

# **get_controlled_list_taxonomic_status**
> character get_controlled_list_taxonomic_status()
Get allowed values for the field 'TaxonomicStatus' in specimen and taxon documents



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

# **get_controlled_lists**
> character get_controlled_lists()
Get the names of fields for which a controlled vocabulary exists

Possible values for fields with controlled vocabularies can be queried with metadata/getControlledList/{field}

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

# **get_rest_services**
> RestService get_rest_services()
List all available REST services and their parameters

Lists end point name, http method, response type, and URL

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**RestService**](RestService.md)

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

# **get_source_systems**
> SourceSystem get_source_systems()
Get the data sources from which the data was retrieved

Returns code and name of all source systems

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**SourceSystem**](SourceSystem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

