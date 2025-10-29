# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      # @see AlchemystAISDK::Resources::V1::Context#add
      class ContextAddParams < AlchemystAISDK::Internal::Type::BaseModel
        extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
        include AlchemystAISDK::Internal::Type::RequestParameters

        # @!attribute context_type
        #   Type of context being added
        #
        #   @return [Symbol, AlchemystAISDK::Models::V1::ContextAddParams::ContextType, nil]
        optional :context_type, enum: -> { AlchemystAISDK::V1::ContextAddParams::ContextType }

        # @!attribute documents
        #   Array of documents with content and additional metadata
        #
        #   @return [Array<AlchemystAISDK::Models::V1::ContextAddParams::Document>, nil]
        optional :documents,
                 -> { AlchemystAISDK::Internal::Type::ArrayOf[AlchemystAISDK::V1::ContextAddParams::Document] }

        # @!attribute metadata
        #   Additional metadata for the context
        #
        #   @return [AlchemystAISDK::Models::V1::ContextAddParams::Metadata, nil]
        optional :metadata, -> { AlchemystAISDK::V1::ContextAddParams::Metadata }

        # @!attribute scope
        #   Scope of the context
        #
        #   @return [Symbol, AlchemystAISDK::Models::V1::ContextAddParams::Scope, nil]
        optional :scope, enum: -> { AlchemystAISDK::V1::ContextAddParams::Scope }

        # @!attribute source
        #   The source of the context data
        #
        #   @return [String, nil]
        optional :source, String

        # @!method initialize(context_type: nil, documents: nil, metadata: nil, scope: nil, source: nil, request_options: {})
        #   @param context_type [Symbol, AlchemystAISDK::Models::V1::ContextAddParams::ContextType] Type of context being added
        #
        #   @param documents [Array<AlchemystAISDK::Models::V1::ContextAddParams::Document>] Array of documents with content and additional metadata
        #
        #   @param metadata [AlchemystAISDK::Models::V1::ContextAddParams::Metadata] Additional metadata for the context
        #
        #   @param scope [Symbol, AlchemystAISDK::Models::V1::ContextAddParams::Scope] Scope of the context
        #
        #   @param source [String] The source of the context data
        #
        #   @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}]

        # Type of context being added
        module ContextType
          extend AlchemystAISDK::Internal::Type::Enum

          RESOURCE = :resource
          CONVERSATION = :conversation
          INSTRUCTION = :instruction

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Document < AlchemystAISDK::Internal::Type::BaseModel
          # @!attribute content
          #   The content of the document
          #
          #   @return [String, nil]
          optional :content, String

          # @!method initialize(content: nil)
          #   @param content [String] The content of the document
        end

        class Metadata < AlchemystAISDK::Internal::Type::BaseModel
          # @!attribute file_name
          #   Name of the file
          #
          #   @return [String, nil]
          optional :file_name, String, api_name: :fileName

          # @!attribute file_size
          #   Size of the file in bytes
          #
          #   @return [Float, nil]
          optional :file_size, Float, api_name: :fileSize

          # @!attribute file_type
          #   Type/MIME of the file
          #
          #   @return [String, nil]
          optional :file_type, String, api_name: :fileType

          # @!attribute group_name
          #   Array of Group Name to which the file belongs to
          #
          #   @return [Array<String>, nil]
          optional :group_name, AlchemystAISDK::Internal::Type::ArrayOf[String], api_name: :groupName

          # @!attribute last_modified
          #   Last modified timestamp
          #
          #   @return [String, nil]
          optional :last_modified, String, api_name: :lastModified

          # @!method initialize(file_name: nil, file_size: nil, file_type: nil, group_name: nil, last_modified: nil)
          #   Additional metadata for the context
          #
          #   @param file_name [String] Name of the file
          #
          #   @param file_size [Float] Size of the file in bytes
          #
          #   @param file_type [String] Type/MIME of the file
          #
          #   @param group_name [Array<String>] Array of Group Name to which the file belongs to
          #
          #   @param last_modified [String] Last modified timestamp
        end

        # Scope of the context
        module Scope
          extend AlchemystAISDK::Internal::Type::Enum

          INTERNAL = :internal
          EXTERNAL = :external

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
