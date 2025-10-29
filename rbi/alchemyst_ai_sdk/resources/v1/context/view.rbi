# typed: strong

module AlchemystAISDK
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user
          sig do
            params(
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(AlchemystAISDK::Models::V1::Context::ViewRetrieveResponse)
          end
          def retrieve(request_options: {})
          end

          # Fetches documents view for authenticated user with optional organization context
          sig do
            params(
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def docs(request_options: {})
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
