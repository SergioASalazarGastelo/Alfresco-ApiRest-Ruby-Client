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

# Unit tests for SwaggerClient::SitesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SitesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SitesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SitesApi' do
    it 'should create an instact of SitesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SitesApi)
    end
  end

  # unit tests for approve_site_membership_request
  # Approve a site membership request
  # Approve a site membership request. 
  # @param site_id The identifier of a site.
  # @param invitee_id The invitee user name.
  # @param [Hash] opts the optional parameters
  # @option opts [SiteMembershipApprovalBody] :site_membership_approval_body Accepting a request to join, optionally, allows assignment of a role to the user. 
  # @return [nil]
  describe 'approve_site_membership_request test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_site
  # Create a site
  # **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Creates a default site with the given details.  Unless explicitly specified, the site id will be generated from the site title. The site id must be unique and only contain alphanumeric and/or dash characters.  Note: the id of a site cannot be updated once the site has been created.  For example, to create a public site called \&quot;Marketing\&quot; the following body could be used: &#x60;&#x60;&#x60;JSON {   \&quot;title\&quot;: \&quot;Marketing\&quot;,   \&quot;visibility\&quot;: \&quot;PUBLIC\&quot; } &#x60;&#x60;&#x60;  The creation of the (surf) configuration files required by Share can be skipped via the **skipConfiguration** query parameter.  **Note:** if skipped then such a site will **not** work within Share.  The addition of the site to the user&#39;s site favorites can be skipped via the **skipAddToFavorites** query parameter.  The creator will be added as a member with Site Manager role.  When you create a site, a container called **documentLibrary** is created for you in the new site.  This container is the root folder for content stored in the site. 
  # @param site_body_create The site details
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :skip_configuration Flag to indicate whether the Share-specific (surf) configuration files for the site should not be created.
  # @option opts [BOOLEAN] :skip_add_to_favorites Flag to indicate whether the site should not be added to the user&#39;s site favorites.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteEntry]
  describe 'create_site test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_site_membership
  # Create a site membership
  # Creates a site membership for person **personId** on site **siteId**.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager  **Note:** You can create more than one site membership by  specifying a list of people in the JSON body like this:  &#x60;&#x60;&#x60;JSON [   {     \&quot;role\&quot;: \&quot;SiteConsumer\&quot;,     \&quot;id\&quot;: \&quot;joe\&quot;   },   {     \&quot;role\&quot;: \&quot;SiteConsumer\&quot;,     \&quot;id\&quot;: \&quot;fred\&quot;   } ] &#x60;&#x60;&#x60; If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  &#x60;&#x60;&#x60;JSON {   \&quot;list\&quot;: {     \&quot;pagination\&quot;: {       \&quot;count\&quot;: 2,       \&quot;hasMoreItems\&quot;: false,       \&quot;totalItems\&quot;: 2,       \&quot;skipCount\&quot;: 0,       \&quot;maxItems\&quot;: 100     },     \&quot;entries\&quot;: [       {         \&quot;entry\&quot;: {           ...         }       },       {         \&quot;entry\&quot;: {           ...         }       }     ]   } } &#x60;&#x60;&#x60; 
  # @param site_id The identifier of a site.
  # @param site_membership_body_create The person to add and their role
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMemberEntry]
  describe 'create_site_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_site_membership_request_for_person
  # Create a site membership request
  # Create a site membership request for yourself on the site with the identifier of **id**, specified in the JSON body.  The result of the request differs depending on the type of site.  * For a **public** site, you join the site immediately as a SiteConsumer. * For a **moderated** site, your request is added to the site membership request list. The request waits for approval from the Site Manager. * You cannot request membership of a **private** site. Members are invited by the site administrator.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user.   **Note:** You can create site membership requests for more than one site by  specifying a list of sites in the JSON body like this:  &#x60;&#x60;&#x60;JSON [   {     \&quot;message\&quot;: \&quot;Please can you add me\&quot;,     \&quot;id\&quot;: \&quot;test-site-1\&quot;,     \&quot;title\&quot;: \&quot;Request for test site 1\&quot;,   },   {     \&quot;message\&quot;: \&quot;Please can you add me\&quot;,     \&quot;id\&quot;: \&quot;test-site-2\&quot;,     \&quot;title\&quot;: \&quot;Request for test site 2\&quot;,   } ] &#x60;&#x60;&#x60; If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  &#x60;&#x60;&#x60;JSON {   \&quot;list\&quot;: {     \&quot;pagination\&quot;: {       \&quot;count\&quot;: 2,       \&quot;hasMoreItems\&quot;: false,       \&quot;totalItems\&quot;: 2,       \&quot;skipCount\&quot;: 0,       \&quot;maxItems\&quot;: 100     },     \&quot;entries\&quot;: [       {         \&quot;entry\&quot;: {           ...         }       },       {         \&quot;entry\&quot;: {           ...         }       }     ]   } } &#x60;&#x60;&#x60; 
  # @param person_id The identifier of a person.
  # @param site_membership_request_body_create Site membership request details
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMembershipRequestEntry]
  describe 'create_site_membership_request_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_site
  # Delete a site
  # **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the site with **siteId**. 
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :permanent Flag to indicate whether the site should be permanently deleted i.e. bypass the trashcan.
  # @return [nil]
  describe 'delete_site test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_site_membership
  # Delete a site membership
  # Deletes person **personId** as a member of site **siteId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param site_id The identifier of a site.
  # @param person_id The identifier of a person.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_site_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_site_membership_for_person
  # Delete a site membership
  # Deletes person **personId** as a member of site **siteId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_site_membership_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_site_membership_request_for_person
  # Delete a site membership request
  # Deletes the site membership request to site **siteId** for person **personId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_site_membership_request_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_site
  # Get a site
  # Gets information for site **siteId**.  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to the site **siteId**:  &#x60;&#x60;&#x60; containers,members &#x60;&#x60;&#x60; 
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :relations Use the relations parameter to include one or more related entities in a single response.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteEntry]
  describe 'get_site test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_site_container
  # Get a site container
  # Gets information on the container **containerId** in site **siteId**.
  # @param site_id The identifier of a site.
  # @param container_id The unique identifier of a site container.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteContainerEntry]
  describe 'get_site_container test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_site_membership
  # Get a site membership
  # Gets site membership information for person **personId** on site **siteId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param site_id The identifier of a site.
  # @param person_id The identifier of a person.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMemberEntry]
  describe 'get_site_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_site_membership_for_person
  # Get a site membership
  # Gets site membership information for person **personId** on site **siteId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @return [SiteRoleEntry]
  describe 'get_site_membership_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_site_membership_request_for_person
  # Get a site membership request
  # Gets the site membership request for site **siteId** for person **personId**, if one exists.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMembershipRequestEntry]
  describe 'get_site_membership_request_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_site_membership_requests
  # Get site membership requests
  # Get the list of site membership requests the user can action.  You can use the **where** parameter to filter the returned site membership requests by **siteId**. For example:  &#x60;&#x60;&#x60; (siteId&#x3D;mySite) &#x60;&#x60;&#x60;  The **where** parameter can also be used to filter by ***personId***. For example:  &#x60;&#x60;&#x60; where&#x3D;(personId&#x3D;person) &#x60;&#x60;&#x60;  This may be combined with the siteId filter, as shown below:  &#x60;&#x60;&#x60; where&#x3D;(siteId&#x3D;mySite AND personId&#x3D;person)) &#x60;&#x60;&#x60; 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [String] :where A string to restrict the returned objects by using a predicate.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMembershipRequestWithPersonPaging]
  describe 'get_site_membership_requests test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_site_containers
  # List site containers
  # Gets a list of containers for the site **siteId**.
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteContainerPaging]
  describe 'list_site_containers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_site_membership_requests_for_person
  # List site membership requests
  # Gets a list of the current site membership requests for person **personId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMembershipRequestPaging]
  describe 'list_site_membership_requests_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_site_memberships
  # List site memberships
  # Gets a list of site memberships for site **siteId**.
  # @param site_id The identifier of a site.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMemberPaging]
  describe 'list_site_memberships test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_site_memberships_for_person
  # List site memberships
  # Gets a list of site membership information for person **personId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  &#x60;&#x60;&#x60; (visibility&#x3D;&#39;PRIVATE&#39;) (visibility&#x3D;&#39;PUBLIC&#39;) (visibility&#x3D;&#39;MODERATED&#39;) &#x60;&#x60;&#x60;  Example to filter by site **preset**:  &#x60;&#x60;&#x60; (preset&#x3D;&#39;site-dashboard&#39;) &#x60;&#x60;&#x60;  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * role 
  # @param person_id The identifier of a person.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :order_by A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
  # @option opts [Array<String>] :relations Use the relations parameter to include one or more related entities in a single response.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @option opts [String] :where A string to restrict the returned objects by using a predicate.
  # @return [SiteRolePaging]
  describe 'list_site_memberships_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_sites
  # List sites
  # Gets a list of sites in this repository.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  &#x60;&#x60;&#x60; (visibility&#x3D;&#39;PRIVATE&#39;) (visibility&#x3D;&#39;PUBLIC&#39;) (visibility&#x3D;&#39;MODERATED&#39;) &#x60;&#x60;&#x60;  Example to filter by site **preset**:  &#x60;&#x60;&#x60; (preset&#x3D;&#39;site-dashboard&#39;) &#x60;&#x60;&#x60;  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * description  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to each site:  &#x60;&#x60;&#x60; containers,members &#x60;&#x60;&#x60; 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :order_by A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
  # @option opts [Array<String>] :relations Use the relations parameter to include one or more related entities in a single response.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @option opts [String] :where A string to restrict the returned objects by using a predicate.
  # @return [SitePaging]
  describe 'list_sites test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reject_site_membership_request
  # Reject a site membership request
  # Reject a site membership request. 
  # @param site_id The identifier of a site.
  # @param invitee_id The invitee user name.
  # @param [Hash] opts the optional parameters
  # @option opts [SiteMembershipRejectionBody] :site_membership_rejection_body Rejecting a request to join, optionally, allows the inclusion of comment. 
  # @return [nil]
  describe 'reject_site_membership_request test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_site
  # Update a site
  # **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Update the details for the given site **siteId**. Site Manager or otherwise a  (site) admin can update title, description or visibility.  Note: the id of a site cannot be updated once the site has been created. 
  # @param site_id The identifier of a site.
  # @param site_body_update The site information to update.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteEntry]
  describe 'update_site test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_site_membership
  # Update a site membership
  # Update the membership of person **personId** in site **siteId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager 
  # @param site_id The identifier of a site.
  # @param person_id The identifier of a person.
  # @param site_membership_body_update The persons new role
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMemberEntry]
  describe 'update_site_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_site_membership_request_for_person
  # Update a site membership request
  # Updates the message for the site membership request to site **siteId** for person **personId**.  You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user. 
  # @param person_id The identifier of a person.
  # @param site_id The identifier of a site.
  # @param site_membership_request_body_update The new message to display
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [SiteMembershipRequestEntry]
  describe 'update_site_membership_request_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
