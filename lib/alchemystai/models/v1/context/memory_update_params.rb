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
          #   @return [Array<Alchemystai::Models::V1::Context::MemoryUpdateParams::Content>]
          required :contents,
                   -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::V1::Context::MemoryUpdateParams::Content] }

          # @!attribute memory_id
          #   The ID of the memory to update
          #
          #   @return [String]
          required :memory_id, String, api_name: :memoryId

          # @!method initialize(contents:, memory_id:, request_options: {})
          #   @param contents [Array<Alchemystai::Models::V1::Context::MemoryUpdateParams::Content>] Array of updated content objects
          #
          #   @param memory_id [String] The ID of the memory to update
          #
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]

          class Content < Alchemystai::Internal::Type::BaseModel
            # @!attribute id
            #   Unique ID for the message
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute content
            #   The content of the memory entry
            #
            #   @return [String, nil]
            optional :content, String

            # @!attribute created_at
            #   Creation timestamp
            #
            #   @return [String, nil]
            optional :created_at, String, api_name: :createdAt

            # @!attribute metadata
            #   Additional metadata for the memory entry
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Alchemystai::Internal::Type::HashOf[Alchemystai::Internal::Type::Unknown]

            # @!attribute role
            #   Role of the message (e.g., user, assistant)
            #
            #   @return [String, nil]
            optional :role, String

            # @!method initialize(id: nil, content: nil, created_at: nil, metadata: nil, role: nil)
            #   @param id [String] Unique ID for the message
            #
            #   @param content [String] The content of the memory entry
            #
            #   @param created_at [String] Creation timestamp
            #
            #   @param metadata [Hash{Symbol=>Object}] Additional metadata for the memory entry
            #
            #   @param role [String] Role of the message (e.g., user, assistant)
          end
        end
      end
    end
  end
end
