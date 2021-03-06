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

# Unit tests for SwaggerClient::GroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GroupsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::GroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupsApi' do
    it 'should create an instact of GroupsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::GroupsApi)
    end
  end

  # unit tests for create_group
  # Create a group
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Create a group.  The group id must start with \&quot;GROUP\\_\&quot;. If this is omitted it will be added automatically. This format is also returned when listing groups or group memberships. It should be noted that the other group-related operations also expect the id to start with \&quot;GROUP\\_\&quot;.  If one or more parentIds are specified then the group will be created and become a member of each of the specified parent groups.  If no parentIds are specified then the group will be created as a root group.  The group will be created in the **APP.DEFAULT** and **AUTH.ALF** zones.  You must have admin rights to create a group.  
  # @param group_body_create The group to create.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :include Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [GroupEntry]
  describe 'create_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_group_membership
  # Create a group membership
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Create a group membership (for an existing person or group) within a group **groupId**.  If the added group was previously a root group then it becomes a non-root group since it now has a parent.  It is an error to specify an **id** that does not exist.  You must have admin rights to create a group membership. 
  # @param group_id The identifier of a group.
  # @param group_membership_body_create The group membership to add (person or sub-group).
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [GroupMemberEntry]
  describe 'create_group_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_group
  # Delete a group
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Delete group **groupId**.   The option to cascade delete applies this recursively to any hierarchy of group members. In this case, removing a group member does not delete the person or sub-group itself. If a removed sub-group no longer has any parent groups then it becomes a root group.  You must have admin rights to delete a group. 
  # @param group_id The identifier of a group.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :cascade If **true** then the delete will be applied in cascade to sub-groups. 
  # @return [nil]
  describe 'delete_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_group_membership
  # Delete a group membership
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Delete group member **groupMemberId** (person or sub-group) from group **groupId**.  Removing a group member does not delete the person or sub-group itself.  If a removed sub-group no longer has any parent groups then it becomes a root group.  You must have admin rights to delete a group membership. 
  # @param group_id The identifier of a group.
  # @param group_member_id The identifier of a person or group.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group
  # Get group details
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Get details for group **groupId**.  You can use the **include** parameter to return additional information. 
  # @param group_id The identifier of a group.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :include Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [GroupEntry]
  describe 'get_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_group_memberships
  # List memberships of a group
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Gets a list of the group memberships for the group **groupId**.  You can use the **where** parameter to filter the returned groups by **memberType**.  Example to filter by **memberType**, use any one of:  &#x60;&#x60;&#x60; (memberType&#x3D;&#39;GROUP&#39;) (memberType&#x3D;&#39;PERSON&#39;) &#x60;&#x60;&#x60;  The default sort order for the returned list is for group members to be sorted by ascending displayName. You can override the default by using the **orderBy** parameter. You can specify one of the following fields in the **orderBy** parameter: * id * displayName 
  # @param group_id The identifier of a group.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :order_by A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
  # @option opts [String] :where A string to restrict the returned objects by using a predicate.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [GroupMemberPaging]
  describe 'list_group_memberships test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_group_memberships_for_person
  # List group memberships
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.            Gets a list of group membership information for person **personId**.    You can use the &#x60;-me-&#x60; string in place of &#x60;&lt;personId&gt;&#x60; to specify the currently authenticated user.   You can use the **include** parameter to return additional information.   You can use the **where** parameter to filter the returned groups by **isRoot**. For example, the following **where**  clause will return just the root groups:   &#x60;&#x60;&#x60;  (isRoot&#x3D;true)  &#x60;&#x60;&#x60;   The **where** parameter can also be used to filter by ***zone***. This may be combined with isRoot to narrow  a result set even further. For example, the following where clause will only return groups belonging to the  &#x60;MY.ZONE&#x60; zone.   &#x60;&#x60;&#x60;  where&#x3D;(zones in (&#39;MY.ZONE&#39;))  &#x60;&#x60;&#x60;   This may be combined with the isRoot filter, as shown below:   &#x60;&#x60;&#x60;  where&#x3D;(isRoot&#x3D;false AND zones in (&#39;MY.ZONE&#39;))  &#x60;&#x60;&#x60;   ***Note:*** restrictions include  * &#x60;AND&#x60; is the only supported operator when combining &#x60;isRoot&#x60; and &#x60;zones&#x60; filters  * Only one zone is supported by the filter  * The quoted zone name must be placed in parenthesis — a 400 error will result if these are omitted.    The default sort order for the returned list is for groups to be sorted by ascending displayName.  You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter:  * id  * displayName 
  # @param person_id The identifier of a person.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :order_by A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
  # @option opts [Array<String>] :include Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
  # @option opts [String] :where A string to restrict the returned objects by using a predicate.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [GroupPaging]
  describe 'list_group_memberships_for_person test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_groups
  # List groups
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Gets a list of groups.   You can use the **include** parameter to return additional information.  You can use the **where** parameter to filter the returned groups by **isRoot**. For example, the following **where**  clause will return just the root groups:    &#x60;&#x60;&#x60; (isRoot&#x3D;true) &#x60;&#x60;&#x60;  The **where** parameter can also be used to filter by ***zone***. This may be combined with isRoot to narrow a result set even further. For example, the following where clause will only return groups belonging to the &#x60;MY.ZONE&#x60; zone.  &#x60;&#x60;&#x60; where&#x3D;(zones in (&#39;MY.ZONE&#39;)) &#x60;&#x60;&#x60;  This may be combined with the isRoot filter, as shown below:  &#x60;&#x60;&#x60; where&#x3D;(isRoot&#x3D;false AND zones in (&#39;MY.ZONE&#39;)) &#x60;&#x60;&#x60;  ***Note:*** restrictions include * &#x60;AND&#x60; is the only supported operator when combining &#x60;isRoot&#x60; and &#x60;zones&#x60; filters * Only one zone is supported by the filter * The quoted zone name must be placed in parenthesis — a 400 error will result if these are omitted.  The default sort order for the returned list is for groups to be sorted by ascending displayName. You can override the default by using the **orderBy** parameter. You can specify one of the following fields in the **orderBy** parameter: * id * displayName 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip_count The number of entities that exist in the collection before those included in this list.  If not supplied then the default value is 0. 
  # @option opts [Integer] :max_items The maximum number of items to return in the list.  If not supplied then the default value is 100. 
  # @option opts [Array<String>] :order_by A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
  # @option opts [Array<String>] :include Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
  # @option opts [String] :where A string to restrict the returned objects by using a predicate.
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [GroupPaging]
  describe 'list_groups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_group
  # Update group details
  # **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Update details (displayName) for group **groupId**.  You must have admin rights to update a group. 
  # @param group_id The identifier of a group.
  # @param group_body_update The group information to update.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :include Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
  # @option opts [Array<String>] :fields A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
  # @return [GroupEntry]
  describe 'update_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
