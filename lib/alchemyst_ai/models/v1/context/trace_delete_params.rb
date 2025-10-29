# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      module Context
        # @see AlchemystAI::Resources::V1::Context::Traces#delete
        class TraceDeleteParams < AlchemystAI::Internal::Type::BaseModel
          extend AlchemystAI::Internal::Type::RequestParameters::Converter
          include AlchemystAI::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [AlchemystAI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
