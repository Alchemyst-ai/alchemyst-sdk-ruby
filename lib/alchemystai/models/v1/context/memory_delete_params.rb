# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Memory#delete
        class MemoryDeleteParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

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
          #   @deprecated
          #
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
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
