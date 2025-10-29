# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      module Org
        # @see AlchemystAI::Resources::V1::Org::Context#view
        class ContextViewParams < AlchemystAI::Internal::Type::BaseModel
          extend AlchemystAI::Internal::Type::RequestParameters::Converter
          include AlchemystAI::Internal::Type::RequestParameters

          # @!attribute user_ids
          #
          #   @return [Array<String>]
          required :user_ids, AlchemystAI::Internal::Type::ArrayOf[String], api_name: :userIds

          # @!method initialize(user_ids:, request_options: {})
          #   @param user_ids [Array<String>]
          #   @param request_options [AlchemystAI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
