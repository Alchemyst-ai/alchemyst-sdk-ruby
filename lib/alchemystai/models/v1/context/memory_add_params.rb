# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Memory#add
        class MemoryAddParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!attribute contents
          #   Array of content objects. Each object must contain at least the 'content' field.
          #   Additional properties are allowed.
          #
          #   @return [Array<Alchemystai::Models::V1::Context::MemoryAddParams::Content>]
          required :contents,
                   -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::V1::Context::MemoryAddParams::Content] }

          # @!attribute memory_id
          #   The ID of the memory
          #
          #   @return [String]
          required :memory_id, String, api_name: :memoryId

          # @!attribute metadata
          #   Optional metadata for the memory context. Defaults to ["default"]
          #
          #   @return [Alchemystai::Models::V1::Context::MemoryAddParams::Metadata, nil]
          optional :metadata, -> { Alchemystai::V1::Context::MemoryAddParams::Metadata }

          # @!method initialize(contents:, memory_id:, metadata: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Alchemystai::Models::V1::Context::MemoryAddParams} for more details.
          #
          #   @param contents [Array<Alchemystai::Models::V1::Context::MemoryAddParams::Content>] Array of content objects. Each object must contain at least the 'content' field.
          #
          #   @param memory_id [String] The ID of the memory
          #
          #   @param metadata [Alchemystai::Models::V1::Context::MemoryAddParams::Metadata] Optional metadata for the memory context. Defaults to ["default"]
          #
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]

          class Content < Alchemystai::Internal::Type::BaseModel
            # @!attribute content
            #   The content of the memory message
            #
            #   @return [String]
            required :content, String

            # @!attribute metadata
            #   Additional metadata for the message (optional)
            #
            #   @return [Alchemystai::Models::V1::Context::MemoryAddParams::Content::Metadata, nil]
            optional :metadata, -> { Alchemystai::V1::Context::MemoryAddParams::Content::Metadata }

            # @!method initialize(content:, metadata: nil)
            #   @param content [String] The content of the memory message
            #
            #   @param metadata [Alchemystai::Models::V1::Context::MemoryAddParams::Content::Metadata] Additional metadata for the message (optional)

            # @see Alchemystai::Models::V1::Context::MemoryAddParams::Content#metadata
            class Metadata < Alchemystai::Internal::Type::BaseModel
              # @!attribute message_id
              #   Unique message ID
              #
              #   @return [String, nil]
              optional :message_id, String, api_name: :messageId

              # @!method initialize(message_id: nil)
              #   Additional metadata for the message (optional)
              #
              #   @param message_id [String] Unique message ID
            end
          end

          class Metadata < Alchemystai::Internal::Type::BaseModel
            # @!attribute group_name
            #   Optional group names for the memory context. Defaults to ["default"] if not
            #   provided.
            #
            #   @return [Array<String>, nil]
            optional :group_name, Alchemystai::Internal::Type::ArrayOf[String], api_name: :groupName

            # @!method initialize(group_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Alchemystai::Models::V1::Context::MemoryAddParams::Metadata} for more details.
            #
            #   Optional metadata for the memory context. Defaults to ["default"]
            #
            #   @param group_name [Array<String>] Optional group names for the memory context. Defaults to ["default"] if not prov
          end
        end
      end
    end
  end
end
