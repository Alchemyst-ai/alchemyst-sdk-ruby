# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::AddAsync#create
        class AddAsyncCreateParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!attribute context_type
          #   Type of context being added
          #
          #   @return [Symbol, Alchemystai::Models::V1::Context::AddAsyncCreateParams::ContextType]
          required :context_type, enum: -> { Alchemystai::V1::Context::AddAsyncCreateParams::ContextType }

          # @!attribute documents
          #   Array of documents with content and additional metadata
          #
          #   @return [Array<Alchemystai::Models::V1::Context::AddAsyncCreateParams::Document>]
          required :documents,
                   -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::V1::Context::AddAsyncCreateParams::Document] }

          # @!attribute scope
          #   Scope of the context
          #
          #   @return [Symbol, Alchemystai::Models::V1::Context::AddAsyncCreateParams::Scope]
          required :scope, enum: -> { Alchemystai::V1::Context::AddAsyncCreateParams::Scope }

          # @!attribute source
          #   The source of the context data
          #
          #   @return [String]
          required :source, String

          # @!attribute metadata
          #   Additional metadata for the context
          #
          #   @return [Alchemystai::Models::V1::Context::AddAsyncCreateParams::Metadata, nil]
          optional :metadata, -> { Alchemystai::V1::Context::AddAsyncCreateParams::Metadata }

          # @!method initialize(context_type:, documents:, scope:, source:, metadata: nil, request_options: {})
          #   @param context_type [Symbol, Alchemystai::Models::V1::Context::AddAsyncCreateParams::ContextType] Type of context being added
          #
          #   @param documents [Array<Alchemystai::Models::V1::Context::AddAsyncCreateParams::Document>] Array of documents with content and additional metadata
          #
          #   @param scope [Symbol, Alchemystai::Models::V1::Context::AddAsyncCreateParams::Scope] Scope of the context
          #
          #   @param source [String] The source of the context data
          #
          #   @param metadata [Alchemystai::Models::V1::Context::AddAsyncCreateParams::Metadata] Additional metadata for the context
          #
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]

          # Type of context being added
          module ContextType
            extend Alchemystai::Internal::Type::Enum

            RESOURCE = :resource
            CONVERSATION = :conversation
            INSTRUCTION = :instruction

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Document < Alchemystai::Internal::Type::BaseModel
            # @!attribute content
            #   The content of the document
            #
            #   @return [String, nil]
            optional :content, String

            # @!method initialize(content: nil)
            #   @param content [String] The content of the document
          end

          # Scope of the context
          module Scope
            extend Alchemystai::Internal::Type::Enum

            INTERNAL = :internal
            EXTERNAL = :external

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Metadata < Alchemystai::Internal::Type::BaseModel
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
            optional :group_name, Alchemystai::Internal::Type::ArrayOf[String], api_name: :groupName

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
        end
      end
    end
  end
end
