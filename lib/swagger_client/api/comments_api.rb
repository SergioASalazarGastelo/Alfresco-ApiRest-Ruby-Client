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
  class CommentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a comment
    # Creates a comment on node **nodeId**. You specify the comment in a JSON body like this:  ```JSON {   \"content\": \"This is a comment\" } ```  **Note:** You can create more than one comment by  specifying a list of comments in the JSON body like this:  ```JSON [   {     \"content\": \"This is a comment\"   },   {     \"content\": \"This is another comment\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ``` 
    # @param node_id The identifier of a node.
    # @param comment_body_create The comment text. Note that you can also provide a list of comments.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [CommentEntry]
    def create_comment(node_id, comment_body_create, opts = {})
      data, _status_code, _headers = create_comment_with_http_info(node_id, comment_body_create, opts)
      return data
    end

    # Create a comment
    # Creates a comment on node **nodeId**. You specify the comment in a JSON body like this:  &#x60;&#x60;&#x60;JSON {   \&quot;content\&quot;: \&quot;This is a comment\&quot; } &#x60;&#x60;&#x60;  **Note:** You can create more than one comment by  specifying a list of comments in the JSON body like this:  &#x60;&#x60;&#x60;JSON [   {     \&quot;content\&quot;: \&quot;This is a comment\&quot;   },   {     \&quot;content\&quot;: \&quot;This is another comment\&quot;   } ] &#x60;&#x60;&#x60; If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  &#x60;&#x60;&#x60;JSON {   \&quot;list\&quot;: {     \&quot;pagination\&quot;: {       \&quot;count\&quot;: 2,       \&quot;hasMoreItems\&quot;: false,       \&quot;totalItems\&quot;: 2,       \&quot;skipCount\&quot;: 0,       \&quot;maxItems\&quot;: 100     },     \&quot;entries\&quot;: [       {         \&quot;entry\&quot;: {           ...         }       },       {         \&quot;entry\&quot;: {           ...         }       }     ]   } } &#x60;&#x60;&#x60; 
    # @param node_id The identifier of a node.
    # @param comment_body_create The comment text. Note that you can also provide a list of comments.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [Array<(CommentEntry, Fixnum, Hash)>] CommentEntry data, response status code and response headers
    def create_comment_with_http_info(node_id, comment_body_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi.create_comment ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling CommentsApi.create_comment" if node_id.nil?
      # verify the required parameter 'comment_body_create' is set
      fail ArgumentError, "Missing the required parameter 'comment_body_create' when calling CommentsApi.create_comment" if comment_body_create.nil?
      # resource path
      local_var_path = "/nodes/{nodeId}/comments".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s)

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
      post_body = @api_client.object_to_http_body(comment_body_create)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#create_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a comment
    # Deletes the comment **commentId** from node **nodeId**.
    # @param node_id The identifier of a node.
    # @param comment_id The identifier of a comment.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_comment(node_id, comment_id, opts = {})
      delete_comment_with_http_info(node_id, comment_id, opts)
      return nil
    end

    # Delete a comment
    # Deletes the comment **commentId** from node **nodeId**.
    # @param node_id The identifier of a node.
    # @param comment_id The identifier of a comment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_comment_with_http_info(node_id, comment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi.delete_comment ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling CommentsApi.delete_comment" if node_id.nil?
      # verify the required parameter 'comment_id' is set
      fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentsApi.delete_comment" if comment_id.nil?
      # resource path
      local_var_path = "/nodes/{nodeId}/comments/{commentId}".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s).sub('{' + 'commentId' + '}', comment_id.to_s)

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
        @api_client.config.logger.debug "API called: CommentsApi#delete_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List comments
    # Gets a list of comments for the node **nodeId**, sorted chronologically with the newest comment first.
    # @param node_id The identifier of a node.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0.  (default to 0)
    # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100.  (default to 100)
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [CommentPaging]
    def list_comments(node_id, opts = {})
      data, _status_code, _headers = list_comments_with_http_info(node_id, opts)
      return data
    end

    # List comments
    # Gets a list of comments for the node **nodeId**, sorted chronologically with the newest comment first.
    # @param node_id The identifier of a node.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
    # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [Array<(CommentPaging, Fixnum, Hash)>] CommentPaging data, response status code and response headers
    def list_comments_with_http_info(node_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi.list_comments ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling CommentsApi.list_comments" if node_id.nil?
      if !opts[:'skip_count'].nil? && opts[:'skip_count'] < 0.0
        fail ArgumentError, 'invalid value for "opts[:"skip_count"]" when calling CommentsApi.list_comments, must be greater than or equal to 0.0.'
      end

      if !opts[:'max_items'].nil? && opts[:'max_items'] < 1.0
        fail ArgumentError, 'invalid value for "opts[:"max_items"]" when calling CommentsApi.list_comments, must be greater than or equal to 1.0.'
      end

      # resource path
      local_var_path = "/nodes/{nodeId}/comments".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s)

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
        :return_type => 'CommentPaging')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#list_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a comment
    # Updates an existing comment **commentId** on node **nodeId**.
    # @param node_id The identifier of a node.
    # @param comment_id The identifier of a comment.
    # @param comment_body_update The JSON representing the comment to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [CommentEntry]
    def update_comment(node_id, comment_id, comment_body_update, opts = {})
      data, _status_code, _headers = update_comment_with_http_info(node_id, comment_id, comment_body_update, opts)
      return data
    end

    # Update a comment
    # Updates an existing comment **commentId** on node **nodeId**.
    # @param node_id The identifier of a node.
    # @param comment_id The identifier of a comment.
    # @param comment_body_update The JSON representing the comment to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
    # @return [Array<(CommentEntry, Fixnum, Hash)>] CommentEntry data, response status code and response headers
    def update_comment_with_http_info(node_id, comment_id, comment_body_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi.update_comment ..."
      end
      # verify the required parameter 'node_id' is set
      fail ArgumentError, "Missing the required parameter 'node_id' when calling CommentsApi.update_comment" if node_id.nil?
      # verify the required parameter 'comment_id' is set
      fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentsApi.update_comment" if comment_id.nil?
      # verify the required parameter 'comment_body_update' is set
      fail ArgumentError, "Missing the required parameter 'comment_body_update' when calling CommentsApi.update_comment" if comment_body_update.nil?
      # resource path
      local_var_path = "/nodes/{nodeId}/comments/{commentId}".sub('{format}','json').sub('{' + 'nodeId' + '}', node_id.to_s).sub('{' + 'commentId' + '}', comment_id.to_s)

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
      post_body = @api_client.object_to_http_body(comment_body_update)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#update_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
