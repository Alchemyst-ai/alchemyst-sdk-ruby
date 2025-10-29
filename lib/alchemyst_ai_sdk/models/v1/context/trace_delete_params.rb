# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      module Context
        # @see AlchemystAISDK::Resources::V1::Context::Traces#delete
        class TraceDeleteParams < AlchemystAISDK::Internal::Type::BaseModel
          extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
          include AlchemystAISDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
