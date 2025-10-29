# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      module Context
        # @see AlchemystAISDK::Resources::V1::Context::Memory#delete
        class MemoryDeleteParams < AlchemystAISDK::Internal::Type::BaseModel
          extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
          include AlchemystAISDK::Internal::Type::RequestParameters

          # @!attribute memory_id
          #   The ID of the memory to delete
          #
          #   @return [String, nil]
          optional :memory_id, String, api_name: :memoryId

          # @!attribute organization_id
          #   Optional organization ID
          #
          #   @return [String, nil]
          optional :organization_id, String, nil?: true

          # @!attribute user_id
          #   Optional user ID
          #
          #   @return [String, nil]
          optional :user_id, String, nil?: true

          # @!method initialize(memory_id: nil, organization_id: nil, user_id: nil, request_options: {})
          #   @param memory_id [String] The ID of the memory to delete
          #
          #   @param organization_id [String, nil] Optional organization ID
          #
          #   @param user_id [String, nil] Optional user ID
          #
          #   @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
