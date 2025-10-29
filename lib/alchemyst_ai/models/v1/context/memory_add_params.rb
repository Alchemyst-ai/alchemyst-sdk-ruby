# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      module Context
        # @see AlchemystAI::Resources::V1::Context::Memory#add
        class MemoryAddParams < AlchemystAI::Internal::Type::BaseModel
          extend AlchemystAI::Internal::Type::RequestParameters::Converter
          include AlchemystAI::Internal::Type::RequestParameters

          # @!attribute contents
          #   Array of content objects with additional properties allowed
          #
          #   @return [Array<AlchemystAI::Models::V1::Context::MemoryAddParams::Content>, nil]
          optional :contents,
                   -> { AlchemystAI::Internal::Type::ArrayOf[AlchemystAI::V1::Context::MemoryAddParams::Content] }

          # @!attribute memory_id
          #   The ID of the memory
          #
          #   @return [String, nil]
          optional :memory_id, String, api_name: :memoryId

          # @!method initialize(contents: nil, memory_id: nil, request_options: {})
          #   @param contents [Array<AlchemystAI::Models::V1::Context::MemoryAddParams::Content>] Array of content objects with additional properties allowed
          #
          #   @param memory_id [String] The ID of the memory
          #
          #   @param request_options [AlchemystAI::RequestOptions, Hash{Symbol=>Object}]

          class Content < AlchemystAI::Internal::Type::BaseModel
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
