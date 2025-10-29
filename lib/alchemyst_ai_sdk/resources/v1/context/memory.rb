# frozen_string_literal: true

module AlchemystAISDK
  module Resources
    class V1
      class Context
        class Memory
          # Deletes memory context data based on provided parameters
          #
          # @overload delete(memory_id: nil, organization_id: nil, user_id: nil, request_options: {})
          #
          # @param memory_id [String] The ID of the memory to delete
          #
          # @param organization_id [String, nil] Optional organization ID
          #
          # @param user_id [String, nil] Optional user ID
          #
          # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see AlchemystAISDK::Models::V1::Context::MemoryDeleteParams
          def delete(params = {})
            parsed, options = AlchemystAISDK::V1::Context::MemoryDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/context/memory/delete",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # This endpoint adds memory context data, fetching chat history if needed.
          #
          # @overload add(contents: nil, memory_id: nil, request_options: {})
          #
          # @param contents [Array<AlchemystAISDK::Models::V1::Context::MemoryAddParams::Content>] Array of content objects with additional properties allowed
          #
          # @param memory_id [String] The ID of the memory
          #
          # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see AlchemystAISDK::Models::V1::Context::MemoryAddParams
          def add(params = {})
            parsed, options = AlchemystAISDK::V1::Context::MemoryAddParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/context/memory/add",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [AlchemystAISDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
