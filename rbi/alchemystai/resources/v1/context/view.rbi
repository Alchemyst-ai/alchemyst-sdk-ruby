# typed: strong

module Alchemystai
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user
          sig do
            params(
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Context::ViewRetrieveResponse)
          end
          def retrieve(request_options: {})
          end

          # Fetches documents view for authenticated user with optional organization context
          sig do
            params(
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def docs(request_options: {})
          end

          # @api private
          sig { params(client: Alchemystai::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
