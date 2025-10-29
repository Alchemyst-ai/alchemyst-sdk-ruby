# typed: strong

module AlchemystAI
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user
          sig do
            params(
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(AlchemystAI::Models::V1::Context::ViewRetrieveResponse)
          end
          def retrieve(request_options: {})
          end

          # Fetches documents view for authenticated user with optional organization context
          sig do
            params(
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def docs(request_options: {})
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
