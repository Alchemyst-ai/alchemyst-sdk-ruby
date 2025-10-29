# typed: strong

module AlchemystAISDK
  module Resources
    class V1
      class Context
        class Traces
          # Retrieves a list of traces for the authenticated user
          sig do
            params(
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(AlchemystAISDK::Models::V1::Context::TraceListResponse)
          end
          def list(request_options: {})
          end

          # Deletes a data trace for the authenticated user with the specified trace ID
          sig do
            params(
              trace_id: String,
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(AlchemystAISDK::Models::V1::Context::TraceDeleteResponse)
          end
          def delete(
            # ID of the trace to delete
            trace_id,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: AlchemystAISDK::Client).returns(T.attached_class)
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
