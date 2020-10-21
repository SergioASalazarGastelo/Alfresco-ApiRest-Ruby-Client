=begin
#Alfresco Content Services REST API

#**Core API**  Provides access to the core features of Alfresco Content Services. 

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class ActivitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List activities
    # Gets a list of activities for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 
    # @param person_id The identifier of a person.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0.  (default to 0)
    # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100.  (default to 100)
    # @option opts [String] :who A filter to include the user&#39;s activities only &#x60;me&#x60;, other user&#39;s activities only &#x60;others&#x60;&#39; 
    # @option opts [String] :site_id Include only activity feed entries relating to this site.
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [ActivityPaging]
    def list_activities_for_person(person_id, opts = {})
      data, _status_code, _headers = list_activities_for_person_with_http_info(person_id, opts)
      return data
    end

    # List activities
    # Gets a list of activities for person **personId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
    # @param person_id The identifier of a person.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
    # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
    # @option opts [String] :who A filter to include the user&#39;s activities only &#x60;me&#x60;, other user&#39;s activities only &#x60;others&#x60;&#39; 
    # @option opts [String] :site_id Include only activity feed entries relating to this site.
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [Array<(ActivityPaging, Fixnum, Hash)>] ActivityPaging data, response status code and response headers
    def list_activities_for_person_with_http_info(person_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActivitiesApi.list_activities_for_person ..."
      end
      # verify the required parameter 'person_id' is set
      fail ArgumentError, "Missing the required parameter 'person_id' when calling ActivitiesApi.list_activities_for_person" if person_id.nil?
      if !opts[:'skip_count'].nil? && opts[:'skip_count'] < 0.0
        fail ArgumentError, 'invalid value for "opts[:"skip_count"]" when calling ActivitiesApi.list_activities_for_person, must be greater than or equal to 0.0.'
      end

      if !opts[:'max_items'].nil? && opts[:'max_items'] < 1.0
        fail ArgumentError, 'invalid value for "opts[:"max_items"]" when calling ActivitiesApi.list_activities_for_person, must be greater than or equal to 1.0.'
      end

      # resource path
      local_var_path = "/people/{personId}/activities".sub('{format}','json').sub('{' + 'personId' + '}', person_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'skipCount'] = opts[:'skip_count'] if !opts[:'skip_count'].nil?
      query_params[:'maxItems'] = opts[:'max_items'] if !opts[:'max_items'].nil?
      query_params[:'who'] = opts[:'who'] if !opts[:'who'].nil?
      query_params[:'siteId'] = opts[:'site_id'] if !opts[:'site_id'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ActivityPaging')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#list_activities_for_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
