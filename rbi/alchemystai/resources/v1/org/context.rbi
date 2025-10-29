# typed: strong

module Alchemystai
  module Resources
    class V1
      class Org
        class Context
          # View organization context
          sig do
            params(
              user_ids: T::Array[String],
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Org::ContextViewResponse)
          end
          def view(user_ids:, request_options: {})
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
