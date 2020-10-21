# swagger_client

SwaggerClient - the Ruby gem for the Alfresco Content Services REST API

**Core API**  Provides access to the core features of Alfresco Content Services. 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1
- Package version: 1.0.0
- Build date: 2020-10-21T01:05:53.923-05:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

# Setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::ActionsApi.new

action_definition_id = "action_definition_id_example" # String | The identifier of an action definition.


begin
  #Retrieve the details of an action definition
  result = api_instance.action_details(action_definition_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->action_details: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::ActionsApi* | [**action_details**](docs/ActionsApi.md#action_details) | **GET** /action-definitions/{actionDefinitionId} | Retrieve the details of an action definition
*SwaggerClient::ActionsApi* | [**action_exec**](docs/ActionsApi.md#action_exec) | **POST** /action-executions | Execute an action
*SwaggerClient::ActionsApi* | [**list_actions**](docs/ActionsApi.md#list_actions) | **GET** /action-definitions | Retrieve list of available actions
*SwaggerClient::ActionsApi* | [**node_actions**](docs/ActionsApi.md#node_actions) | **GET** /nodes/{nodeId}/action-definitions | Retrieve actions for a node
*SwaggerClient::ActivitiesApi* | [**list_activities_for_person**](docs/ActivitiesApi.md#list_activities_for_person) | **GET** /people/{personId}/activities | List activities
*SwaggerClient::AuditApi* | [**delete_audit_entries_for_audit_app**](docs/AuditApi.md#delete_audit_entries_for_audit_app) | **DELETE** /audit-applications/{auditApplicationId}/audit-entries | Permanently delete audit entries for an audit application
*SwaggerClient::AuditApi* | [**delete_audit_entry**](docs/AuditApi.md#delete_audit_entry) | **DELETE** /audit-applications/{auditApplicationId}/audit-entries/{auditEntryId} | Permanently delete an audit entry
*SwaggerClient::AuditApi* | [**get_audit_app**](docs/AuditApi.md#get_audit_app) | **GET** /audit-applications/{auditApplicationId} | Get audit application info
*SwaggerClient::AuditApi* | [**get_audit_entry**](docs/AuditApi.md#get_audit_entry) | **GET** /audit-applications/{auditApplicationId}/audit-entries/{auditEntryId} | Get audit entry
*SwaggerClient::AuditApi* | [**list_audit_apps**](docs/AuditApi.md#list_audit_apps) | **GET** /audit-applications | List audit applications
*SwaggerClient::AuditApi* | [**list_audit_entries_for_audit_app**](docs/AuditApi.md#list_audit_entries_for_audit_app) | **GET** /audit-applications/{auditApplicationId}/audit-entries | List audit entries for an audit application
*SwaggerClient::AuditApi* | [**list_audit_entries_for_node**](docs/AuditApi.md#list_audit_entries_for_node) | **GET** /nodes/{nodeId}/audit-entries | List audit entries for a node
*SwaggerClient::AuditApi* | [**update_audit_app**](docs/AuditApi.md#update_audit_app) | **PUT** /audit-applications/{auditApplicationId} | Update audit application info
*SwaggerClient::CommentsApi* | [**create_comment**](docs/CommentsApi.md#create_comment) | **POST** /nodes/{nodeId}/comments | Create a comment
*SwaggerClient::CommentsApi* | [**delete_comment**](docs/CommentsApi.md#delete_comment) | **DELETE** /nodes/{nodeId}/comments/{commentId} | Delete a comment
*SwaggerClient::CommentsApi* | [**list_comments**](docs/CommentsApi.md#list_comments) | **GET** /nodes/{nodeId}/comments | List comments
*SwaggerClient::CommentsApi* | [**update_comment**](docs/CommentsApi.md#update_comment) | **PUT** /nodes/{nodeId}/comments/{commentId} | Update a comment
*SwaggerClient::DownloadsApi* | [**cancel_download**](docs/DownloadsApi.md#cancel_download) | **DELETE** /downloads/{downloadId} | Cancel a download
*SwaggerClient::DownloadsApi* | [**create_download**](docs/DownloadsApi.md#create_download) | **POST** /downloads | Create a new download
*SwaggerClient::DownloadsApi* | [**get_download**](docs/DownloadsApi.md#get_download) | **GET** /downloads/{downloadId} | Get a download
*SwaggerClient::FavoritesApi* | [**create_favorite**](docs/FavoritesApi.md#create_favorite) | **POST** /people/{personId}/favorites | Create a favorite
*SwaggerClient::FavoritesApi* | [**create_site_favorite**](docs/FavoritesApi.md#create_site_favorite) | **POST** /people/{personId}/favorite-sites | Create a site favorite
*SwaggerClient::FavoritesApi* | [**delete_favorite**](docs/FavoritesApi.md#delete_favorite) | **DELETE** /people/{personId}/favorites/{favoriteId} | Delete a favorite
*SwaggerClient::FavoritesApi* | [**delete_site_favorite**](docs/FavoritesApi.md#delete_site_favorite) | **DELETE** /people/{personId}/favorite-sites/{siteId} | Delete a site favorite
*SwaggerClient::FavoritesApi* | [**get_favorite**](docs/FavoritesApi.md#get_favorite) | **GET** /people/{personId}/favorites/{favoriteId} | Get a favorite
*SwaggerClient::FavoritesApi* | [**get_favorite_site**](docs/FavoritesApi.md#get_favorite_site) | **GET** /people/{personId}/favorite-sites/{siteId} | Get a favorite site
*SwaggerClient::FavoritesApi* | [**list_favorite_sites_for_person**](docs/FavoritesApi.md#list_favorite_sites_for_person) | **GET** /people/{personId}/favorite-sites | List favorite sites
*SwaggerClient::FavoritesApi* | [**list_favorites**](docs/FavoritesApi.md#list_favorites) | **GET** /people/{personId}/favorites | List favorites
*SwaggerClient::GroupsApi* | [**create_group**](docs/GroupsApi.md#create_group) | **POST** /groups | Create a group
*SwaggerClient::GroupsApi* | [**create_group_membership**](docs/GroupsApi.md#create_group_membership) | **POST** /groups/{groupId}/members | Create a group membership
*SwaggerClient::GroupsApi* | [**delete_group**](docs/GroupsApi.md#delete_group) | **DELETE** /groups/{groupId} | Delete a group
*SwaggerClient::GroupsApi* | [**delete_group_membership**](docs/GroupsApi.md#delete_group_membership) | **DELETE** /groups/{groupId}/members/{groupMemberId} | Delete a group membership
*SwaggerClient::GroupsApi* | [**get_group**](docs/GroupsApi.md#get_group) | **GET** /groups/{groupId} | Get group details
*SwaggerClient::GroupsApi* | [**list_group_memberships**](docs/GroupsApi.md#list_group_memberships) | **GET** /groups/{groupId}/members | List memberships of a group
*SwaggerClient::GroupsApi* | [**list_group_memberships_for_person**](docs/GroupsApi.md#list_group_memberships_for_person) | **GET** /people/{personId}/groups | List group memberships
*SwaggerClient::GroupsApi* | [**list_groups**](docs/GroupsApi.md#list_groups) | **GET** /groups | List groups
*SwaggerClient::GroupsApi* | [**update_group**](docs/GroupsApi.md#update_group) | **PUT** /groups/{groupId} | Update group details
*SwaggerClient::NetworksApi* | [**get_network**](docs/NetworksApi.md#get_network) | **GET** /networks/{networkId} | Get a network
*SwaggerClient::NetworksApi* | [**get_network_for_person**](docs/NetworksApi.md#get_network_for_person) | **GET** /people/{personId}/networks/{networkId} | Get network information
*SwaggerClient::NetworksApi* | [**list_networks_for_person**](docs/NetworksApi.md#list_networks_for_person) | **GET** /people/{personId}/networks | List network membership
*SwaggerClient::NodesApi* | [**copy_node**](docs/NodesApi.md#copy_node) | **POST** /nodes/{nodeId}/copy | Copy a node
*SwaggerClient::NodesApi* | [**create_association**](docs/NodesApi.md#create_association) | **POST** /nodes/{nodeId}/targets | Create node association
*SwaggerClient::NodesApi* | [**create_node**](docs/NodesApi.md#create_node) | **POST** /nodes/{nodeId}/children | Create a node
*SwaggerClient::NodesApi* | [**create_secondary_child_association**](docs/NodesApi.md#create_secondary_child_association) | **POST** /nodes/{nodeId}/secondary-children | Create secondary child
*SwaggerClient::NodesApi* | [**delete_association**](docs/NodesApi.md#delete_association) | **DELETE** /nodes/{nodeId}/targets/{targetId} | Delete node association(s)
*SwaggerClient::NodesApi* | [**delete_node**](docs/NodesApi.md#delete_node) | **DELETE** /nodes/{nodeId} | Delete a node
*SwaggerClient::NodesApi* | [**delete_secondary_child_association**](docs/NodesApi.md#delete_secondary_child_association) | **DELETE** /nodes/{nodeId}/secondary-children/{childId} | Delete secondary child or children
*SwaggerClient::NodesApi* | [**get_node**](docs/NodesApi.md#get_node) | **GET** /nodes/{nodeId} | Get a node
*SwaggerClient::NodesApi* | [**get_node_content**](docs/NodesApi.md#get_node_content) | **GET** /nodes/{nodeId}/content | Get node content
*SwaggerClient::NodesApi* | [**list_node_children**](docs/NodesApi.md#list_node_children) | **GET** /nodes/{nodeId}/children | List node children
*SwaggerClient::NodesApi* | [**list_parents**](docs/NodesApi.md#list_parents) | **GET** /nodes/{nodeId}/parents | List parents
*SwaggerClient::NodesApi* | [**list_secondary_children**](docs/NodesApi.md#list_secondary_children) | **GET** /nodes/{nodeId}/secondary-children | List secondary children
*SwaggerClient::NodesApi* | [**list_source_associations**](docs/NodesApi.md#list_source_associations) | **GET** /nodes/{nodeId}/sources | List source associations
*SwaggerClient::NodesApi* | [**list_target_associations**](docs/NodesApi.md#list_target_associations) | **GET** /nodes/{nodeId}/targets | List target associations
*SwaggerClient::NodesApi* | [**lock_node**](docs/NodesApi.md#lock_node) | **POST** /nodes/{nodeId}/lock | Lock a node
*SwaggerClient::NodesApi* | [**move_node**](docs/NodesApi.md#move_node) | **POST** /nodes/{nodeId}/move | Move a node
*SwaggerClient::NodesApi* | [**unlock_node**](docs/NodesApi.md#unlock_node) | **POST** /nodes/{nodeId}/unlock | Unlock a node
*SwaggerClient::NodesApi* | [**update_node**](docs/NodesApi.md#update_node) | **PUT** /nodes/{nodeId} | Update a node
*SwaggerClient::NodesApi* | [**update_node_content**](docs/NodesApi.md#update_node_content) | **PUT** /nodes/{nodeId}/content | Update node content
*SwaggerClient::PeopleApi* | [**create_person**](docs/PeopleApi.md#create_person) | **POST** /people | Create person
*SwaggerClient::PeopleApi* | [**delete_avatar_image**](docs/PeopleApi.md#delete_avatar_image) | **DELETE** /people/{personId}/avatar | Delete avatar image
*SwaggerClient::PeopleApi* | [**get_avatar_image**](docs/PeopleApi.md#get_avatar_image) | **GET** /people/{personId}/avatar | Get avatar image
*SwaggerClient::PeopleApi* | [**get_person**](docs/PeopleApi.md#get_person) | **GET** /people/{personId} | Get a person
*SwaggerClient::PeopleApi* | [**list_people**](docs/PeopleApi.md#list_people) | **GET** /people | List people
*SwaggerClient::PeopleApi* | [**request_password_reset**](docs/PeopleApi.md#request_password_reset) | **POST** /people/{personId}/request-password-reset | Request password reset
*SwaggerClient::PeopleApi* | [**reset_password**](docs/PeopleApi.md#reset_password) | **POST** /people/{personId}/reset-password | Reset password
*SwaggerClient::PeopleApi* | [**update_avatar_image**](docs/PeopleApi.md#update_avatar_image) | **PUT** /people/{personId}/avatar | Update avatar image
*SwaggerClient::PeopleApi* | [**update_person**](docs/PeopleApi.md#update_person) | **PUT** /people/{personId} | Update person
*SwaggerClient::PreferencesApi* | [**get_preference**](docs/PreferencesApi.md#get_preference) | **GET** /people/{personId}/preferences/{preferenceName} | Get a preference
*SwaggerClient::PreferencesApi* | [**list_preferences**](docs/PreferencesApi.md#list_preferences) | **GET** /people/{personId}/preferences | List preferences
*SwaggerClient::ProbesApi* | [**get_probe**](docs/ProbesApi.md#get_probe) | **GET** /probes/{probeId} | Check readiness and liveness of the repository
*SwaggerClient::QueriesApi* | [**find_nodes**](docs/QueriesApi.md#find_nodes) | **GET** /queries/nodes | Find nodes
*SwaggerClient::QueriesApi* | [**find_people**](docs/QueriesApi.md#find_people) | **GET** /queries/people | Find people
*SwaggerClient::QueriesApi* | [**find_sites**](docs/QueriesApi.md#find_sites) | **GET** /queries/sites | Find sites
*SwaggerClient::RatingsApi* | [**create_rating**](docs/RatingsApi.md#create_rating) | **POST** /nodes/{nodeId}/ratings | Create a rating
*SwaggerClient::RatingsApi* | [**delete_rating**](docs/RatingsApi.md#delete_rating) | **DELETE** /nodes/{nodeId}/ratings/{ratingId} | Delete a rating
*SwaggerClient::RatingsApi* | [**get_rating**](docs/RatingsApi.md#get_rating) | **GET** /nodes/{nodeId}/ratings/{ratingId} | Get a rating
*SwaggerClient::RatingsApi* | [**list_ratings**](docs/RatingsApi.md#list_ratings) | **GET** /nodes/{nodeId}/ratings | List ratings
*SwaggerClient::RenditionsApi* | [**create_rendition**](docs/RenditionsApi.md#create_rendition) | **POST** /nodes/{nodeId}/renditions | Create rendition
*SwaggerClient::RenditionsApi* | [**get_rendition**](docs/RenditionsApi.md#get_rendition) | **GET** /nodes/{nodeId}/renditions/{renditionId} | Get rendition information
*SwaggerClient::RenditionsApi* | [**get_rendition_content**](docs/RenditionsApi.md#get_rendition_content) | **GET** /nodes/{nodeId}/renditions/{renditionId}/content | Get rendition content
*SwaggerClient::RenditionsApi* | [**list_renditions**](docs/RenditionsApi.md#list_renditions) | **GET** /nodes/{nodeId}/renditions | List renditions
*SwaggerClient::SharedlinksApi* | [**create_shared_link**](docs/SharedlinksApi.md#create_shared_link) | **POST** /shared-links | Create a shared link to a file
*SwaggerClient::SharedlinksApi* | [**delete_shared_link**](docs/SharedlinksApi.md#delete_shared_link) | **DELETE** /shared-links/{sharedId} | Deletes a shared link
*SwaggerClient::SharedlinksApi* | [**email_shared_link**](docs/SharedlinksApi.md#email_shared_link) | **POST** /shared-links/{sharedId}/email | Email shared link
*SwaggerClient::SharedlinksApi* | [**get_shared_link**](docs/SharedlinksApi.md#get_shared_link) | **GET** /shared-links/{sharedId} | Get a shared link
*SwaggerClient::SharedlinksApi* | [**get_shared_link_content**](docs/SharedlinksApi.md#get_shared_link_content) | **GET** /shared-links/{sharedId}/content | Get shared link content
*SwaggerClient::SharedlinksApi* | [**get_shared_link_rendition**](docs/SharedlinksApi.md#get_shared_link_rendition) | **GET** /shared-links/{sharedId}/renditions/{renditionId} | Get shared link rendition information
*SwaggerClient::SharedlinksApi* | [**get_shared_link_rendition_content**](docs/SharedlinksApi.md#get_shared_link_rendition_content) | **GET** /shared-links/{sharedId}/renditions/{renditionId}/content | Get shared link rendition content
*SwaggerClient::SharedlinksApi* | [**list_shared_link_renditions**](docs/SharedlinksApi.md#list_shared_link_renditions) | **GET** /shared-links/{sharedId}/renditions | List renditions for a shared link
*SwaggerClient::SharedlinksApi* | [**list_shared_links**](docs/SharedlinksApi.md#list_shared_links) | **GET** /shared-links | List shared links
*SwaggerClient::SitesApi* | [**approve_site_membership_request**](docs/SitesApi.md#approve_site_membership_request) | **POST** /sites/{siteId}/site-membership-requests/{inviteeId}/approve | Approve a site membership request
*SwaggerClient::SitesApi* | [**create_site**](docs/SitesApi.md#create_site) | **POST** /sites | Create a site
*SwaggerClient::SitesApi* | [**create_site_membership**](docs/SitesApi.md#create_site_membership) | **POST** /sites/{siteId}/members | Create a site membership
*SwaggerClient::SitesApi* | [**create_site_membership_request_for_person**](docs/SitesApi.md#create_site_membership_request_for_person) | **POST** /people/{personId}/site-membership-requests | Create a site membership request
*SwaggerClient::SitesApi* | [**delete_site**](docs/SitesApi.md#delete_site) | **DELETE** /sites/{siteId} | Delete a site
*SwaggerClient::SitesApi* | [**delete_site_membership**](docs/SitesApi.md#delete_site_membership) | **DELETE** /sites/{siteId}/members/{personId} | Delete a site membership
*SwaggerClient::SitesApi* | [**delete_site_membership_for_person**](docs/SitesApi.md#delete_site_membership_for_person) | **DELETE** /people/{personId}/sites/{siteId} | Delete a site membership
*SwaggerClient::SitesApi* | [**delete_site_membership_request_for_person**](docs/SitesApi.md#delete_site_membership_request_for_person) | **DELETE** /people/{personId}/site-membership-requests/{siteId} | Delete a site membership request
*SwaggerClient::SitesApi* | [**get_site**](docs/SitesApi.md#get_site) | **GET** /sites/{siteId} | Get a site
*SwaggerClient::SitesApi* | [**get_site_container**](docs/SitesApi.md#get_site_container) | **GET** /sites/{siteId}/containers/{containerId} | Get a site container
*SwaggerClient::SitesApi* | [**get_site_membership**](docs/SitesApi.md#get_site_membership) | **GET** /sites/{siteId}/members/{personId} | Get a site membership
*SwaggerClient::SitesApi* | [**get_site_membership_for_person**](docs/SitesApi.md#get_site_membership_for_person) | **GET** /people/{personId}/sites/{siteId} | Get a site membership
*SwaggerClient::SitesApi* | [**get_site_membership_request_for_person**](docs/SitesApi.md#get_site_membership_request_for_person) | **GET** /people/{personId}/site-membership-requests/{siteId} | Get a site membership request
*SwaggerClient::SitesApi* | [**get_site_membership_requests**](docs/SitesApi.md#get_site_membership_requests) | **GET** /site-membership-requests | Get site membership requests
*SwaggerClient::SitesApi* | [**list_site_containers**](docs/SitesApi.md#list_site_containers) | **GET** /sites/{siteId}/containers | List site containers
*SwaggerClient::SitesApi* | [**list_site_membership_requests_for_person**](docs/SitesApi.md#list_site_membership_requests_for_person) | **GET** /people/{personId}/site-membership-requests | List site membership requests
*SwaggerClient::SitesApi* | [**list_site_memberships**](docs/SitesApi.md#list_site_memberships) | **GET** /sites/{siteId}/members | List site memberships
*SwaggerClient::SitesApi* | [**list_site_memberships_for_person**](docs/SitesApi.md#list_site_memberships_for_person) | **GET** /people/{personId}/sites | List site memberships
*SwaggerClient::SitesApi* | [**list_sites**](docs/SitesApi.md#list_sites) | **GET** /sites | List sites
*SwaggerClient::SitesApi* | [**reject_site_membership_request**](docs/SitesApi.md#reject_site_membership_request) | **POST** /sites/{siteId}/site-membership-requests/{inviteeId}/reject | Reject a site membership request
*SwaggerClient::SitesApi* | [**update_site**](docs/SitesApi.md#update_site) | **PUT** /sites/{siteId} | Update a site
*SwaggerClient::SitesApi* | [**update_site_membership**](docs/SitesApi.md#update_site_membership) | **PUT** /sites/{siteId}/members/{personId} | Update a site membership
*SwaggerClient::SitesApi* | [**update_site_membership_request_for_person**](docs/SitesApi.md#update_site_membership_request_for_person) | **PUT** /people/{personId}/site-membership-requests/{siteId} | Update a site membership request
*SwaggerClient::TagsApi* | [**create_tag_for_node**](docs/TagsApi.md#create_tag_for_node) | **POST** /nodes/{nodeId}/tags | Create a tag for a node
*SwaggerClient::TagsApi* | [**delete_tag_from_node**](docs/TagsApi.md#delete_tag_from_node) | **DELETE** /nodes/{nodeId}/tags/{tagId} | Delete a tag from a node
*SwaggerClient::TagsApi* | [**get_tag**](docs/TagsApi.md#get_tag) | **GET** /tags/{tagId} | Get a tag
*SwaggerClient::TagsApi* | [**list_tags**](docs/TagsApi.md#list_tags) | **GET** /tags | List tags
*SwaggerClient::TagsApi* | [**list_tags_for_node**](docs/TagsApi.md#list_tags_for_node) | **GET** /nodes/{nodeId}/tags | List tags for a node
*SwaggerClient::TagsApi* | [**update_tag**](docs/TagsApi.md#update_tag) | **PUT** /tags/{tagId} | Update a tag
*SwaggerClient::TrashcanApi* | [**delete_deleted_node**](docs/TrashcanApi.md#delete_deleted_node) | **DELETE** /deleted-nodes/{nodeId} | Permanently delete a deleted node
*SwaggerClient::TrashcanApi* | [**get_archived_node_rendition**](docs/TrashcanApi.md#get_archived_node_rendition) | **GET** /deleted-nodes/{nodeId}/renditions/{renditionId} | Get rendition information for a deleted node
*SwaggerClient::TrashcanApi* | [**get_archived_node_rendition_content**](docs/TrashcanApi.md#get_archived_node_rendition_content) | **GET** /deleted-nodes/{nodeId}/renditions/{renditionId}/content | Get rendition content of a deleted node
*SwaggerClient::TrashcanApi* | [**get_deleted_node**](docs/TrashcanApi.md#get_deleted_node) | **GET** /deleted-nodes/{nodeId} | Get a deleted node
*SwaggerClient::TrashcanApi* | [**get_deleted_node_content**](docs/TrashcanApi.md#get_deleted_node_content) | **GET** /deleted-nodes/{nodeId}/content | Get deleted node content
*SwaggerClient::TrashcanApi* | [**list_deleted_node_renditions**](docs/TrashcanApi.md#list_deleted_node_renditions) | **GET** /deleted-nodes/{nodeId}/renditions | List renditions for a deleted node
*SwaggerClient::TrashcanApi* | [**list_deleted_nodes**](docs/TrashcanApi.md#list_deleted_nodes) | **GET** /deleted-nodes | List deleted nodes
*SwaggerClient::TrashcanApi* | [**restore_deleted_node**](docs/TrashcanApi.md#restore_deleted_node) | **POST** /deleted-nodes/{nodeId}/restore | Restore a deleted node
*SwaggerClient::VersionsApi* | [**delete_version**](docs/VersionsApi.md#delete_version) | **DELETE** /nodes/{nodeId}/versions/{versionId} | Delete a version
*SwaggerClient::VersionsApi* | [**get_version**](docs/VersionsApi.md#get_version) | **GET** /nodes/{nodeId}/versions/{versionId} | Get version information
*SwaggerClient::VersionsApi* | [**get_version_content**](docs/VersionsApi.md#get_version_content) | **GET** /nodes/{nodeId}/versions/{versionId}/content | Get version content
*SwaggerClient::VersionsApi* | [**list_version_history**](docs/VersionsApi.md#list_version_history) | **GET** /nodes/{nodeId}/versions | List version history
*SwaggerClient::VersionsApi* | [**revert_version**](docs/VersionsApi.md#revert_version) | **POST** /nodes/{nodeId}/versions/{versionId}/revert | Revert a version


## Documentation for Models

 - [SwaggerClient::ActionBodyExec](docs/ActionBodyExec.md)
 - [SwaggerClient::ActionDefinition](docs/ActionDefinition.md)
 - [SwaggerClient::ActionDefinitionEntry](docs/ActionDefinitionEntry.md)
 - [SwaggerClient::ActionDefinitionList](docs/ActionDefinitionList.md)
 - [SwaggerClient::ActionDefinitionListList](docs/ActionDefinitionListList.md)
 - [SwaggerClient::ActionExecResult](docs/ActionExecResult.md)
 - [SwaggerClient::ActionExecResultEntry](docs/ActionExecResultEntry.md)
 - [SwaggerClient::ActionParameterDefinition](docs/ActionParameterDefinition.md)
 - [SwaggerClient::Activity](docs/Activity.md)
 - [SwaggerClient::ActivityEntry](docs/ActivityEntry.md)
 - [SwaggerClient::ActivityPaging](docs/ActivityPaging.md)
 - [SwaggerClient::ActivityPagingList](docs/ActivityPagingList.md)
 - [SwaggerClient::Association](docs/Association.md)
 - [SwaggerClient::AssociationBody](docs/AssociationBody.md)
 - [SwaggerClient::AssociationEntry](docs/AssociationEntry.md)
 - [SwaggerClient::AssociationInfo](docs/AssociationInfo.md)
 - [SwaggerClient::AuditApp](docs/AuditApp.md)
 - [SwaggerClient::AuditAppEntry](docs/AuditAppEntry.md)
 - [SwaggerClient::AuditAppPaging](docs/AuditAppPaging.md)
 - [SwaggerClient::AuditAppPagingList](docs/AuditAppPagingList.md)
 - [SwaggerClient::AuditBodyUpdate](docs/AuditBodyUpdate.md)
 - [SwaggerClient::AuditEntry](docs/AuditEntry.md)
 - [SwaggerClient::AuditEntryEntry](docs/AuditEntryEntry.md)
 - [SwaggerClient::AuditEntryPaging](docs/AuditEntryPaging.md)
 - [SwaggerClient::AuditEntryPagingList](docs/AuditEntryPagingList.md)
 - [SwaggerClient::ChildAssociation](docs/ChildAssociation.md)
 - [SwaggerClient::ChildAssociationBody](docs/ChildAssociationBody.md)
 - [SwaggerClient::ChildAssociationEntry](docs/ChildAssociationEntry.md)
 - [SwaggerClient::ChildAssociationInfo](docs/ChildAssociationInfo.md)
 - [SwaggerClient::ClientBody](docs/ClientBody.md)
 - [SwaggerClient::Comment](docs/Comment.md)
 - [SwaggerClient::CommentBody](docs/CommentBody.md)
 - [SwaggerClient::CommentEntry](docs/CommentEntry.md)
 - [SwaggerClient::CommentPaging](docs/CommentPaging.md)
 - [SwaggerClient::CommentPagingList](docs/CommentPagingList.md)
 - [SwaggerClient::Company](docs/Company.md)
 - [SwaggerClient::ContentInfo](docs/ContentInfo.md)
 - [SwaggerClient::DeletedNode](docs/DeletedNode.md)
 - [SwaggerClient::DeletedNodeBodyRestore](docs/DeletedNodeBodyRestore.md)
 - [SwaggerClient::DeletedNodeEntry](docs/DeletedNodeEntry.md)
 - [SwaggerClient::DeletedNodesPaging](docs/DeletedNodesPaging.md)
 - [SwaggerClient::DeletedNodesPagingList](docs/DeletedNodesPagingList.md)
 - [SwaggerClient::Download](docs/Download.md)
 - [SwaggerClient::DownloadBodyCreate](docs/DownloadBodyCreate.md)
 - [SwaggerClient::DownloadEntry](docs/DownloadEntry.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::ErrorError](docs/ErrorError.md)
 - [SwaggerClient::Favorite](docs/Favorite.md)
 - [SwaggerClient::FavoriteBodyCreate](docs/FavoriteBodyCreate.md)
 - [SwaggerClient::FavoriteEntry](docs/FavoriteEntry.md)
 - [SwaggerClient::FavoritePaging](docs/FavoritePaging.md)
 - [SwaggerClient::FavoritePagingList](docs/FavoritePagingList.md)
 - [SwaggerClient::FavoriteSite](docs/FavoriteSite.md)
 - [SwaggerClient::FavoriteSiteBodyCreate](docs/FavoriteSiteBodyCreate.md)
 - [SwaggerClient::FavoriteSiteEntry](docs/FavoriteSiteEntry.md)
 - [SwaggerClient::Group](docs/Group.md)
 - [SwaggerClient::GroupBodyCreate](docs/GroupBodyCreate.md)
 - [SwaggerClient::GroupBodyUpdate](docs/GroupBodyUpdate.md)
 - [SwaggerClient::GroupEntry](docs/GroupEntry.md)
 - [SwaggerClient::GroupMember](docs/GroupMember.md)
 - [SwaggerClient::GroupMemberEntry](docs/GroupMemberEntry.md)
 - [SwaggerClient::GroupMemberPaging](docs/GroupMemberPaging.md)
 - [SwaggerClient::GroupMemberPagingList](docs/GroupMemberPagingList.md)
 - [SwaggerClient::GroupMembershipBodyCreate](docs/GroupMembershipBodyCreate.md)
 - [SwaggerClient::GroupPaging](docs/GroupPaging.md)
 - [SwaggerClient::GroupPagingList](docs/GroupPagingList.md)
 - [SwaggerClient::NetworkQuota](docs/NetworkQuota.md)
 - [SwaggerClient::Node](docs/Node.md)
 - [SwaggerClient::NodeAssociation](docs/NodeAssociation.md)
 - [SwaggerClient::NodeAssociationEntry](docs/NodeAssociationEntry.md)
 - [SwaggerClient::NodeAssociationPaging](docs/NodeAssociationPaging.md)
 - [SwaggerClient::NodeAssociationPagingList](docs/NodeAssociationPagingList.md)
 - [SwaggerClient::NodeBodyCopy](docs/NodeBodyCopy.md)
 - [SwaggerClient::NodeBodyCreate](docs/NodeBodyCreate.md)
 - [SwaggerClient::NodeBodyCreateAssociation](docs/NodeBodyCreateAssociation.md)
 - [SwaggerClient::NodeBodyLock](docs/NodeBodyLock.md)
 - [SwaggerClient::NodeBodyMove](docs/NodeBodyMove.md)
 - [SwaggerClient::NodeBodyUpdate](docs/NodeBodyUpdate.md)
 - [SwaggerClient::NodeChildAssociation](docs/NodeChildAssociation.md)
 - [SwaggerClient::NodeChildAssociationEntry](docs/NodeChildAssociationEntry.md)
 - [SwaggerClient::NodeChildAssociationPaging](docs/NodeChildAssociationPaging.md)
 - [SwaggerClient::NodeChildAssociationPagingList](docs/NodeChildAssociationPagingList.md)
 - [SwaggerClient::NodeEntry](docs/NodeEntry.md)
 - [SwaggerClient::NodePaging](docs/NodePaging.md)
 - [SwaggerClient::NodePagingList](docs/NodePagingList.md)
 - [SwaggerClient::Pagination](docs/Pagination.md)
 - [SwaggerClient::PasswordResetBody](docs/PasswordResetBody.md)
 - [SwaggerClient::PathElement](docs/PathElement.md)
 - [SwaggerClient::PathInfo](docs/PathInfo.md)
 - [SwaggerClient::PermissionElement](docs/PermissionElement.md)
 - [SwaggerClient::PermissionsBody](docs/PermissionsBody.md)
 - [SwaggerClient::PermissionsInfo](docs/PermissionsInfo.md)
 - [SwaggerClient::Person](docs/Person.md)
 - [SwaggerClient::PersonBodyCreate](docs/PersonBodyCreate.md)
 - [SwaggerClient::PersonBodyUpdate](docs/PersonBodyUpdate.md)
 - [SwaggerClient::PersonEntry](docs/PersonEntry.md)
 - [SwaggerClient::PersonNetwork](docs/PersonNetwork.md)
 - [SwaggerClient::PersonNetworkEntry](docs/PersonNetworkEntry.md)
 - [SwaggerClient::PersonNetworkPaging](docs/PersonNetworkPaging.md)
 - [SwaggerClient::PersonNetworkPagingList](docs/PersonNetworkPagingList.md)
 - [SwaggerClient::PersonPaging](docs/PersonPaging.md)
 - [SwaggerClient::PersonPagingList](docs/PersonPagingList.md)
 - [SwaggerClient::Preference](docs/Preference.md)
 - [SwaggerClient::PreferenceEntry](docs/PreferenceEntry.md)
 - [SwaggerClient::PreferencePaging](docs/PreferencePaging.md)
 - [SwaggerClient::PreferencePagingList](docs/PreferencePagingList.md)
 - [SwaggerClient::ProbeEntry](docs/ProbeEntry.md)
 - [SwaggerClient::ProbeEntryEntry](docs/ProbeEntryEntry.md)
 - [SwaggerClient::Rating](docs/Rating.md)
 - [SwaggerClient::RatingAggregate](docs/RatingAggregate.md)
 - [SwaggerClient::RatingBody](docs/RatingBody.md)
 - [SwaggerClient::RatingEntry](docs/RatingEntry.md)
 - [SwaggerClient::RatingPaging](docs/RatingPaging.md)
 - [SwaggerClient::RatingPagingList](docs/RatingPagingList.md)
 - [SwaggerClient::Rendition](docs/Rendition.md)
 - [SwaggerClient::RenditionBodyCreate](docs/RenditionBodyCreate.md)
 - [SwaggerClient::RenditionEntry](docs/RenditionEntry.md)
 - [SwaggerClient::RenditionPaging](docs/RenditionPaging.md)
 - [SwaggerClient::RenditionPagingList](docs/RenditionPagingList.md)
 - [SwaggerClient::RevertBody](docs/RevertBody.md)
 - [SwaggerClient::SharedLink](docs/SharedLink.md)
 - [SwaggerClient::SharedLinkBodyCreate](docs/SharedLinkBodyCreate.md)
 - [SwaggerClient::SharedLinkBodyEmail](docs/SharedLinkBodyEmail.md)
 - [SwaggerClient::SharedLinkEntry](docs/SharedLinkEntry.md)
 - [SwaggerClient::SharedLinkPaging](docs/SharedLinkPaging.md)
 - [SwaggerClient::SharedLinkPagingList](docs/SharedLinkPagingList.md)
 - [SwaggerClient::Site](docs/Site.md)
 - [SwaggerClient::SiteBodyCreate](docs/SiteBodyCreate.md)
 - [SwaggerClient::SiteBodyUpdate](docs/SiteBodyUpdate.md)
 - [SwaggerClient::SiteContainer](docs/SiteContainer.md)
 - [SwaggerClient::SiteContainerEntry](docs/SiteContainerEntry.md)
 - [SwaggerClient::SiteContainerPaging](docs/SiteContainerPaging.md)
 - [SwaggerClient::SiteContainerPagingList](docs/SiteContainerPagingList.md)
 - [SwaggerClient::SiteEntry](docs/SiteEntry.md)
 - [SwaggerClient::SiteMember](docs/SiteMember.md)
 - [SwaggerClient::SiteMemberEntry](docs/SiteMemberEntry.md)
 - [SwaggerClient::SiteMemberPaging](docs/SiteMemberPaging.md)
 - [SwaggerClient::SiteMemberPagingList](docs/SiteMemberPagingList.md)
 - [SwaggerClient::SiteMembershipApprovalBody](docs/SiteMembershipApprovalBody.md)
 - [SwaggerClient::SiteMembershipBodyCreate](docs/SiteMembershipBodyCreate.md)
 - [SwaggerClient::SiteMembershipBodyUpdate](docs/SiteMembershipBodyUpdate.md)
 - [SwaggerClient::SiteMembershipRejectionBody](docs/SiteMembershipRejectionBody.md)
 - [SwaggerClient::SiteMembershipRequest](docs/SiteMembershipRequest.md)
 - [SwaggerClient::SiteMembershipRequestBodyCreate](docs/SiteMembershipRequestBodyCreate.md)
 - [SwaggerClient::SiteMembershipRequestBodyUpdate](docs/SiteMembershipRequestBodyUpdate.md)
 - [SwaggerClient::SiteMembershipRequestEntry](docs/SiteMembershipRequestEntry.md)
 - [SwaggerClient::SiteMembershipRequestPaging](docs/SiteMembershipRequestPaging.md)
 - [SwaggerClient::SiteMembershipRequestPagingList](docs/SiteMembershipRequestPagingList.md)
 - [SwaggerClient::SiteMembershipRequestWithPerson](docs/SiteMembershipRequestWithPerson.md)
 - [SwaggerClient::SiteMembershipRequestWithPersonEntry](docs/SiteMembershipRequestWithPersonEntry.md)
 - [SwaggerClient::SiteMembershipRequestWithPersonPaging](docs/SiteMembershipRequestWithPersonPaging.md)
 - [SwaggerClient::SiteMembershipRequestWithPersonPagingList](docs/SiteMembershipRequestWithPersonPagingList.md)
 - [SwaggerClient::SitePaging](docs/SitePaging.md)
 - [SwaggerClient::SitePagingList](docs/SitePagingList.md)
 - [SwaggerClient::SiteRole](docs/SiteRole.md)
 - [SwaggerClient::SiteRoleEntry](docs/SiteRoleEntry.md)
 - [SwaggerClient::SiteRolePaging](docs/SiteRolePaging.md)
 - [SwaggerClient::SiteRolePagingList](docs/SiteRolePagingList.md)
 - [SwaggerClient::Tag](docs/Tag.md)
 - [SwaggerClient::TagBody](docs/TagBody.md)
 - [SwaggerClient::TagEntry](docs/TagEntry.md)
 - [SwaggerClient::TagPaging](docs/TagPaging.md)
 - [SwaggerClient::TagPagingList](docs/TagPagingList.md)
 - [SwaggerClient::UserInfo](docs/UserInfo.md)
 - [SwaggerClient::Version](docs/Version.md)
 - [SwaggerClient::VersionEntry](docs/VersionEntry.md)
 - [SwaggerClient::VersionPaging](docs/VersionPaging.md)
 - [SwaggerClient::VersionPagingList](docs/VersionPagingList.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication
