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

# Unit tests for SwaggerClient::ProbesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProbesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ProbesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProbesApi' do
    it 'should create an instact of ProbesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ProbesApi)
    end
  end

  # unit tests for get_probe
  # Check readiness and liveness of the repository
  # **Note:** this endpoint is available in Alfresco 6.0 and newer versions.  Returns a status of 200 to indicate success and 503 for failure.  The readiness probe is normally only used to check repository startup.  The liveness probe should then be used to check the repository is still responding to requests.  **Note:** No authentication is required to call this endpoint. 
  # @param probe_id The name of the probe: * -ready- * -live- 
  # @param [Hash] opts the optional parameters
  # @return [ProbeEntry]
  describe 'get_probe test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
