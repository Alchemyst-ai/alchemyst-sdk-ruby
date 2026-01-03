# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::View#docs
        class ViewDocsResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute documents
          #
          #   @return [Array<Alchemystai::Models::V1::Context::ViewDocsResponse::Document>]
          required :documents,
                   -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::Context::ViewDocsResponse::Document] }

          # @!method initialize(documents:)
          #   @param documents [Array<Alchemystai::Models::V1::Context::ViewDocsResponse::Document>]

          class Document < Alchemystai::Internal::Type::BaseModel
            # @!attribute file_name
            #   Name of the file
            #
            #   @return [String]
            required :file_name, String, api_name: :fileName

            # @!attribute file_size
            #   Size of the file in bytes
            #
            #   @return [Float]
            required :file_size, Float, api_name: :fileSize

            # @!attribute file_type
            #   Type/MIME of the file
            #
            #   @return [String]
            required :file_type, String, api_name: :fileType

            # @!attribute group_name
            #   Array of group names to which the file belongs
            #
            #   @return [Array<String>]
            required :group_name, Alchemystai::Internal::Type::ArrayOf[String], api_name: :groupName

            # @!attribute last_modified
            #   Last modified timestamp (ISO format)
            #
            #   @return [String]
            required :last_modified, String, api_name: :lastModified

            # @!method initialize(file_name:, file_size:, file_type:, group_name:, last_modified:)
            #   @param file_name [String] Name of the file
            #
            #   @param file_size [Float] Size of the file in bytes
            #
            #   @param file_type [String] Type/MIME of the file
            #
            #   @param group_name [Array<String>] Array of group names to which the file belongs
            #
            #   @param last_modified [String] Last modified timestamp (ISO format)
          end
        end
      end
    end
  end
end
