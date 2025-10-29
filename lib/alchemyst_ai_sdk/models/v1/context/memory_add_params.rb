# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      module Context
        # @see AlchemystAISDK::Resources::V1::Context::Memory#add
        class MemoryAddParams < AlchemystAISDK::Internal::Type::BaseModel
          extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
          include AlchemystAISDK::Internal::Type::RequestParameters

          # @!attribute contents
          #   Array of content objects with additional properties allowed
          #
          #   @return [Array<AlchemystAISDK::Models::V1::Context::MemoryAddParams::Content>, nil]
          optional :contents,
                   -> { AlchemystAISDK::Internal::Type::ArrayOf[AlchemystAISDK::V1::Context::MemoryAddParams::Content] }

          # @!attribute memory_id
          #   The ID of the memory
          #
          #   @return [String, nil]
          optional :memory_id, String, api_name: :memoryId

          # @!method initialize(contents: nil, memory_id: nil, request_options: {})
          #   @param contents [Array<AlchemystAISDK::Models::V1::Context::MemoryAddParams::Content>] Array of content objects with additional properties allowed
          #
          #   @param memory_id [String] The ID of the memory
          #
          #   @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}]

          class Content < AlchemystAISDK::Internal::Type::BaseModel
            # @!attribute content
            #
            #   @return [String, nil]
            optional :content, String

            # @!method initialize(content: nil)
            #   @param content [String]
          end
        end
      end
    end
  end
end
