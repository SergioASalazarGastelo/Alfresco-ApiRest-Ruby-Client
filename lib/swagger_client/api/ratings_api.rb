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
  class RatingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a rating
    # Create a rating for the node with identifier **nodeId**
    # @param node_id The identifier of a node.
    # @param rating_body_create For \&quot;myRating\&quot; the type is specific to the rating scheme, boolean for the likes and an integer for the fiveStar.  For example, to \&quot;like\&quot; a file the following body would be used:  &#x60;&#x60;&#x60;JSON   {     \&quot;id\&quot;: \&quot;likes\&quot;,     \&quot;myRating\&quot;: true   } &#x60;&#x60;&#x60; 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [RatingEntry]
    def create_rating(node_id, rating_body_create, opts = {})
      data, _status_code, _headers = create_rating_with_http_info(node_id, rating_body_create, opts)
      return data
    end

    # Create a rating
    # Create a rating for the node with identifier **nodeId**
    # @param node_id The identifier of a node.
    # @param rating_body_create For \&quot;myRating\&quot; the type is specific to the rating scheme, boolean for the likes and an integer for the fiveStar.  For example, to \&quot;like\&quot; a file the following body would be used:  &#x60;&#x60;&#x60;JSON   {     \&quot;id\&quot;: \&quot;likes\&quot;,     \&quot;myRating\&quot;: true   } &#x60;&#x60;&#x60; 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [Array<(RatingEntry, Fixnum, Hash)>] RatingEntry data, response status code and response headers
    def create_rating_with_http_info(node_id, rating_body_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatingsApi.create_rating ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling RatingsApi.create_rating" if node_id.nil?
      # verify the required parameter 'rating_body_create' is set
      fail ArgumentError, "Missing the required parameter 'rating_body_create' when calling RatingsApi.create_rating" if rating_body_create.nil?
      # resource path
      local_var_path = "/nodes/{nodeId}/ratings".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s)

      # query parameters
      query_params = {}
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
      post_body = @api_client.object_to_http_body(rating_body_create)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RatingEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatingsApi#create_rating\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a rating
    # Deletes rating **ratingId** from node **nodeId**.
    # @param node_id The identifier of a node.
    # @param rating_id The identifier of a rating.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_rating(node_id, rating_id, opts = {})
      delete_rating_with_http_info(node_id, rating_id, opts)
      return nil
    end

    # Delete a rating
    # Deletes rating **ratingId** from node **nodeId**.
    # @param node_id The identifier of a node.
    # @param rating_id The identifier of a rating.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_rating_with_http_info(node_id, rating_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatingsApi.delete_rating ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling RatingsApi.delete_rating" if node_id.nil?
      # verify the required parameter 'rating_id' is set
      fail ArgumentError, "Missing the required parameter 'rating_id' when calling RatingsApi.delete_rating" if rating_id.nil?
      # resource path
      local_var_path = "/nodes/{nodeId}/ratings/{ratingId}".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s).sub('{' + 'ratingId' + '}', rating_id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatingsApi#delete_rating\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a rating
    # Get the specific rating **ratingId** on node **nodeId**.
    # @param node_id The identifier of a node.
    # @param rating_id The identifier of a rating.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [RatingEntry]
    def get_rating(node_id, rating_id, opts = {})
      data, _status_code, _headers = get_rating_with_http_info(node_id, rating_id, opts)
      return data
    end

    # Get a rating
    # Get the specific rating **ratingId** on node **nodeId**.
    # @param node_id The identifier of a node.
    # @param rating_id The identifier of a rating.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [Array<(RatingEntry, Fixnum, Hash)>] RatingEntry data, response status code and response headers
    def get_rating_with_http_info(node_id, rating_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatingsApi.get_rating ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling RatingsApi.get_rating" if node_id.nil?
      # verify the required parameter 'rating_id' is set
      fail ArgumentError, "Missing the required parameter 'rating_id' when calling RatingsApi.get_rating" if rating_id.nil?
      # resource path
      local_var_path = "/nodes/{nodeId}/ratings/{ratingId}".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s).sub('{' + 'ratingId' + '}', rating_id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'RatingEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatingsApi#get_rating\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ratings
    # Gets a list of ratings for node **nodeId**.
    # @param node_id The identifier of a node.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0.  (default to 0)
    # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100.  (default to 100)
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [RatingPaging]
    def list_ratings(node_id, opts = {})
      data, _status_code, _headers = list_ratings_with_http_info(node_id, opts)
      return data
    end

    # List ratings
    # Gets a list of ratings for node **nodeId**.
    # @param node_id The identifier of a node.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
    # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [Array<(RatingPaging, Fixnum, Hash)>] RatingPaging data, response status code and response headers
    def list_ratings_with_http_info(node_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatingsApi.list_ratings ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling RatingsApi.list_ratings" if node_id.nil?
      if !opts[:'skip_count'].nil? && opts[:'skip_count'] < 0.0
        fail ArgumentError, 'invalid value for "opts[:"skip_count"]" when calling RatingsApi.list_ratings, must be greater than or equal to 0.0.'
      end

      if !opts[:'max_items'].nil? && opts[:'max_items'] < 1.0
        fail ArgumentError, 'invalid value for "opts[:"max_items"]" when calling RatingsApi.list_ratings, must be greater than or equal to 1.0.'
      end

      # resource path
      local_var_path = "/nodes/{nodeId}/ratings".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'skipCount'] = opts[:'skip_count'] if !opts[:'skip_count'].nil?
      query_params[:'maxItems'] = opts[:'max_items'] if !opts[:'max_items'].nil?
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
        :return_type => 'RatingPaging')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatingsApi#list_ratings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
