# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Context
        class Memory
          # This endpoint updates memory context data.
          #
          # @overload update(contents:, memory_id:, request_options: {})
          #
          # @param contents [Array<Alchemystai::Models::V1::Context::MemoryUpdateParams::Content>] Array of updated content objects
          #
          # @param memory_id [String] The ID of the memory to update
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Context::MemoryUpdateResponse]
          #
          # @see Alchemystai::Models::V1::Context::MemoryUpdateParams
          def update(params)
            parsed, options = Alchemystai::V1::Context::MemoryUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/context/memory/update",
              body: parsed,
              model: Alchemystai::Models::V1::Context::MemoryUpdateResponse,
              options: options
            )
          end

          # Deletes memory context data based on provided parameters.
          #
          # @overload delete(memory_id:, organization_id:, by_doc: nil, by_id: nil, user_id: nil, request_options: {})
          #
          # @param memory_id [String] The ID of the memory to delete
          #
          # @param organization_id [String, nil] Organization ID
          #
          # @param by_doc [Boolean, nil] Delete by document flag
          #
          # @param by_id [Boolean, nil] Delete by ID flag
          #
          # @param user_id [String, nil] Optional user ID
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Alchemystai::Models::V1::Context::MemoryDeleteParams
          def delete(params)
            parsed, options = Alchemystai::V1::Context::MemoryDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/context/memory/delete",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Alchemystai::Models::V1::Context::MemoryAddParams} for more details.
          #
          # This endpoint adds memory (chat history) as context.
          #
          # @overload add(contents:, session_id:, metadata: nil, request_options: {})
          #
          # @param contents [Array<Alchemystai::Models::V1::Context::MemoryAddParams::Content>] Array of content objects. Each object must contain at least the 'content' field.
          #
          # @param session_id [String] The ID of the session
          #
          # @param metadata [Alchemystai::Models::V1::Context::MemoryAddParams::Metadata] Optional metadata for the memory context. Defaults to ["default"] if not provide
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Context::MemoryAddResponse]
          #
          # @see Alchemystai::Models::V1::Context::MemoryAddParams
          def add(params)
            parsed, options = Alchemystai::V1::Context::MemoryAddParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/context/memory/add",
              body: parsed,
              model: Alchemystai::Models::V1::Context::MemoryAddResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Alchemystai::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
