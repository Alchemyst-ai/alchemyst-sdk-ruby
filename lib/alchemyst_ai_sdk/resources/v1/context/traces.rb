# frozen_string_literal: true

module AlchemystAISDK
  module Resources
    class V1
      class Context
        class Traces
          # Retrieves a list of traces for the authenticated user
          #
          # @overload list(request_options: {})
          #
          # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [AlchemystAISDK::Models::V1::Context::TraceListResponse]
          #
          # @see AlchemystAISDK::Models::V1::Context::TraceListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "api/v1/context/traces",
              model: AlchemystAISDK::Models::V1::Context::TraceListResponse,
              options: params[:request_options]
            )
          end

          # Deletes a data trace for the authenticated user with the specified trace ID
          #
          # @overload delete(trace_id, request_options: {})
          #
          # @param trace_id [String] ID of the trace to delete
          #
          # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [AlchemystAISDK::Models::V1::Context::TraceDeleteResponse]
          #
          # @see AlchemystAISDK::Models::V1::Context::TraceDeleteParams
          def delete(trace_id, params = {})
            @client.request(
              method: :delete,
              path: ["api/v1/context/traces/%1$s/delete", trace_id],
              model: AlchemystAISDK::Models::V1::Context::TraceDeleteResponse,
              options: params[:request_options]
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
