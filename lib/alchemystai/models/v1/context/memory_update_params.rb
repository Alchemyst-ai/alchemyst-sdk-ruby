# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Memory#update
        class MemoryUpdateParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!attribute contents
          #   Array of updated content objects
          #
          #   @return [Array<Alchemystai::Models::V1::Context::MemoryUpdateParams::Content>, nil]
          optional :contents,
                   -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::V1::Context::MemoryUpdateParams::Content] }

          # @!attribute memory_id
          #   The ID of the memory to update
          #
          #   @return [String, nil]
          optional :memory_id, String, api_name: :memoryId

          # @!method initialize(contents: nil, memory_id: nil, request_options: {})
          #   @param contents [Array<Alchemystai::Models::V1::Context::MemoryUpdateParams::Content>] Array of updated content objects
          #
          #   @param memory_id [String] The ID of the memory to update
          #
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]

          class Content < Alchemystai::Internal::Type::BaseModel
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
