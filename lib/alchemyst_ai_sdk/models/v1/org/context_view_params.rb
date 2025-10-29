# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      module Org
        # @see AlchemystAISDK::Resources::V1::Org::Context#view
        class ContextViewParams < AlchemystAISDK::Internal::Type::BaseModel
          extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
          include AlchemystAISDK::Internal::Type::RequestParameters

          # @!attribute user_ids
          #
          #   @return [Array<String>]
          required :user_ids, AlchemystAISDK::Internal::Type::ArrayOf[String], api_name: :userIds

          # @!method initialize(user_ids:, request_options: {})
          #   @param user_ids [Array<String>]
          #   @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
