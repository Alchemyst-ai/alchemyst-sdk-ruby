# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::View#docs
        class ViewDocsParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!attribute magic_key
          #   Optional magic key for special access or filtering
          #
          #   @return [String, nil]
          optional :magic_key, String

          # @!method initialize(magic_key: nil, request_options: {})
          #   @param magic_key [String] Optional magic key for special access or filtering
          #
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
