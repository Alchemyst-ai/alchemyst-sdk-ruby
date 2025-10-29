# typed: strong

module AlchemystAI
  module Resources
    class V1
      class Context
        class Traces
          # Retrieves a list of traces for the authenticated user
          sig do
            params(
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(AlchemystAI::Models::V1::Context::TraceListResponse)
          end
          def list(request_options: {})
          end

          # Deletes a data trace for the authenticated user with the specified trace ID
          sig do
            params(
              trace_id: String,
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(AlchemystAI::Models::V1::Context::TraceDeleteResponse)
          end
          def delete(
            # ID of the trace to delete
            trace_id,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: AlchemystAI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
