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
require 'date'

# Unit tests for SwaggerClient::SiteMembershipBodyUpdate
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SiteMembershipBodyUpdate' do
  before do
    # run before each test
    @instance = SwaggerClient::SiteMembershipBodyUpdate.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SiteMembershipBodyUpdate' do
    it 'should create an instact of SiteMembershipBodyUpdate' do
      expect(@instance).to be_instance_of(SwaggerClient::SiteMembershipBodyUpdate)
    end
  end
  describe 'test attribute "role"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SiteConsumer", "SiteCollaborator", "SiteContributor", "SiteManager"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.role = value }.not_to raise_error
       #end
    end
  end

end

