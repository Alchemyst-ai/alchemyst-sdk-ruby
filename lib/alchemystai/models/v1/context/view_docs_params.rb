# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::View#docs
        class ViewDocsParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
