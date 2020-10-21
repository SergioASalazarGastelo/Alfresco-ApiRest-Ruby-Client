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

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::NetworksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NetworksApi' do
  before do
    # run before each test
    @instance = SwaggerClient::NetworksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworksApi' do
    it 'should create an instact of NetworksApi' do
      expect(@instance).to be_instance_of(SwaggerClient::NetworksApi)
    end
  end

  # unit tests for get_network
  # Get a network
  # Gets information for a network **networkId**.
  # @param network_id The identifier of a network.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [PersonNetworkEntry]
  describe 'get_network test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_for_person
  # Get network information
  # Gets network information on a single network specified by **networkId** for **personId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param network_id The identifier of a network.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [PersonNetworkEntry]
  describe 'get_network_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_networks_for_person
  # List network membership
  # Gets a list of network memberships for person **personId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [PersonNetworkPaging]
  describe 'list_networks_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
