# typed: strong

module Alchemystai
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user.
          sig do
            params(
              file_name: String,
              magic_key: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Context::ViewRetrieveResponse)
          end
          def retrieve(
            # Name of the file to retrieve context for
            file_name: nil,
            # Magic key for context retrieval
            magic_key: nil,
            request_options: {}
          )
          end

          # Fetches documents view for authenticated user with optional organization
          # context.
          sig do
            params(
              magic_key: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Context::ViewDocsResponse)
          end
          def docs(
            # Optional magic key for special access or filtering
            magic_key: nil,
            request_options: {}
          )
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
