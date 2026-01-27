# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::View#retrieve
        class ViewRetrieveParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!attribute file_name
          #   Name of the file to retrieve context for
          #
          #   @return [String, nil]
          optional :file_name, String

          # @!attribute magic_key
          #   Magic key for context retrieval
          #
          #   @return [String, nil]
          optional :magic_key, String

          # @!method initialize(file_name: nil, magic_key: nil, request_options: {})
          #   @param file_name [String] Name of the file to retrieve context for
          #
          #   @param magic_key [String] Magic key for context retrieval
          #
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
