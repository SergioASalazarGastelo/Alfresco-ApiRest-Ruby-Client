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

require 'date'

module Alfresco

  class NodeChildAssociation
    attr_accessor :id

    # The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name. 
    attr_accessor :name

    attr_accessor :node_type

    attr_accessor :is_folder

    attr_accessor :is_file

    attr_accessor :is_locked

    attr_accessor :modified_at

    attr_accessor :modified_by_user

    attr_accessor :created_at

    attr_accessor :created_by_user

    attr_accessor :parent_id

    attr_accessor :is_link

    attr_accessor :is_favorite

    attr_accessor :content

    attr_accessor :aspect_names

    attr_accessor :properties

    attr_accessor :allowable_operations

    attr_accessor :path

    attr_accessor :permissions

    attr_accessor :association


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'node_type' => :'nodeType',
        :'is_folder' => :'isFolder',
        :'is_file' => :'isFile',
        :'is_locked' => :'isLocked',
        :'modified_at' => :'modifiedAt',
        :'modified_by_user' => :'modifiedByUser',
        :'created_at' => :'createdAt',
        :'created_by_user' => :'createdByUser',
        :'parent_id' => :'parentId',
        :'is_link' => :'isLink',
        :'is_favorite' => :'isFavorite',
        :'content' => :'content',
        :'aspect_names' => :'aspectNames',
        :'properties' => :'properties',
        :'allowable_operations' => :'allowableOperations',
        :'path' => :'path',
        :'permissions' => :'permissions',
        :'association' => :'association'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'node_type' => :'String',
        :'is_folder' => :'BOOLEAN',
        :'is_file' => :'BOOLEAN',
        :'is_locked' => :'BOOLEAN',
        :'modified_at' => :'DateTime',
        :'modified_by_user' => :'UserInfo',
        :'created_at' => :'DateTime',
        :'created_by_user' => :'UserInfo',
        :'parent_id' => :'String',
        :'is_link' => :'BOOLEAN',
        :'is_favorite' => :'BOOLEAN',
        :'content' => :'ContentInfo',
        :'aspect_names' => :'Array<String>',
        :'properties' => :'Object',
        :'allowable_operations' => :'Array<String>',
        :'path' => :'PathInfo',
        :'permissions' => :'PermissionsInfo',
        :'association' => :'ChildAssociationInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'nodeType')
        self.node_type = attributes[:'nodeType']
      end

      if attributes.has_key?(:'isFolder')
        self.is_folder = attributes[:'isFolder']
      end

      if attributes.has_key?(:'isFile')
        self.is_file = attributes[:'isFile']
      end

      if attributes.has_key?(:'isLocked')
        self.is_locked = attributes[:'isLocked']
      else
        self.is_locked = false
      end

      if attributes.has_key?(:'modifiedAt')
        self.modified_at = attributes[:'modifiedAt']
      end

      if attributes.has_key?(:'modifiedByUser')
        self.modified_by_user = attributes[:'modifiedByUser']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'createdByUser')
        self.created_by_user = attributes[:'createdByUser']
      end

      if attributes.has_key?(:'parentId')
        self.parent_id = attributes[:'parentId']
      end

      if attributes.has_key?(:'isLink')
        self.is_link = attributes[:'isLink']
      end

      if attributes.has_key?(:'isFavorite')
        self.is_favorite = attributes[:'isFavorite']
      end

      if attributes.has_key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.has_key?(:'aspectNames')
        if (value = attributes[:'aspectNames']).is_a?(Array)
          self.aspect_names = value
        end
      end

      if attributes.has_key?(:'properties')
        self.properties = attributes[:'properties']
      end

      if attributes.has_key?(:'allowableOperations')
        if (value = attributes[:'allowableOperations']).is_a?(Array)
          self.allowable_operations = value
        end
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'permissions')
        self.permissions = attributes[:'permissions']
      end

      if attributes.has_key?(:'association')
        self.association = attributes[:'association']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name !~ Regexp.new('^(?!(.*[\\\"\\*\\\\\\>\\<\\?/\\:\\|]+.*)|(.*[\\.]?.*[\\.]+$)|(.*[ ]+$))')
        invalid_properties.push("invalid value for 'name', must conform to the pattern ^(?!(.*[\\\"\\*\\\\\\>\\<\\?/\\:\\|]+.*)|(.*[\\.]?.*[\\.]+$)|(.*[ ]+$)).")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      return false if @name !~ Regexp.new('^(?!(.*[\\\"\\*\\\\\\>\\<\\?/\\:\\|]+.*)|(.*[\\.]?.*[\\.]+$)|(.*[ ]+$))')
      return false if @node_type.nil?
      return false if @is_folder.nil?
      return false if @is_file.nil?
      return false if @modified_at.nil?
      return false if @modified_by_user.nil?
      return false if @created_at.nil?
      return false if @created_by_user.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name !~ Regexp.new('^(?!(.*[\\\"\\*\\\\\\>\\<\\?/\\:\\|]+.*)|(.*[\\.]?.*[\\.]+$)|(.*[ ]+$))')
        fail ArgumentError, "invalid value for 'name', must conform to the pattern ^(?!(.*[\\\"\\*\\\\\\>\\<\\?/\\:\\|]+.*)|(.*[\\.]?.*[\\.]+$)|(.*[ ]+$))."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          node_type == o.node_type &&
          is_folder == o.is_folder &&
          is_file == o.is_file &&
          is_locked == o.is_locked &&
          modified_at == o.modified_at &&
          modified_by_user == o.modified_by_user &&
          created_at == o.created_at &&
          created_by_user == o.created_by_user &&
          parent_id == o.parent_id &&
          is_link == o.is_link &&
          is_favorite == o.is_favorite &&
          content == o.content &&
          aspect_names == o.aspect_names &&
          properties == o.properties &&
          allowable_operations == o.allowable_operations &&
          path == o.path &&
          permissions == o.permissions &&
          association == o.association
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, node_type, is_folder, is_file, is_locked, modified_at, modified_by_user, created_at, created_by_user, parent_id, is_link, is_favorite, content, aspect_names, properties, allowable_operations, path, permissions, association].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Alfresco.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
