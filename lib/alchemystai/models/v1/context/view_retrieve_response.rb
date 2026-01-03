# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::View#retrieve
        class ViewRetrieveResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute contexts
          #   List of context items
          #
          #   @return [Array<Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context>]
          required :contexts,
                   -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context] }

          # @!attribute success
          #
          #   @return [Boolean]
          required :success, Alchemystai::Internal::Type::Boolean

          # @!method initialize(contexts:, success:)
          #   @param contexts [Array<Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context>] List of context items
          #
          #   @param success [Boolean]

          class Context < Alchemystai::Internal::Type::BaseModel
            # @!attribute content
            #   The content of the context item
            #
            #   @return [String, nil]
            optional :content, String

            # @!attribute metadata
            #   Additional metadata for the context
            #
            #   @return [Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata, nil]
            optional :metadata, -> { Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata }

            # @!method initialize(content: nil, metadata: nil)
            #   @param content [String] The content of the context item
            #
            #   @param metadata [Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata] Additional metadata for the context

            # @see Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context#metadata
            class Metadata < Alchemystai::Internal::Type::BaseModel
              # @!attribute file_name
              #
              #   @return [String, nil]
              optional :file_name, String, api_name: :fileName

              # @!attribute file_size
              #
              #   @return [Float, nil]
              optional :file_size, Float, api_name: :fileSize

              # @!attribute file_type
              #
              #   @return [String, nil]
              optional :file_type, String, api_name: :fileType

              # @!attribute group_name
              #
              #   @return [Array<String>, nil]
              optional :group_name, Alchemystai::Internal::Type::ArrayOf[String], api_name: :groupName

              # @!attribute last_modified
              #
              #   @return [String, nil]
              optional :last_modified, String, api_name: :lastModified

              # @!method initialize(file_name: nil, file_size: nil, file_type: nil, group_name: nil, last_modified: nil)
              #   Additional metadata for the context
              #
              #   @param file_name [String]
              #   @param file_size [Float]
              #   @param file_type [String]
              #   @param group_name [Array<String>]
              #   @param last_modified [String]
            end
          end
        end
      end
    end
  end
end
