# typed: strong

module AlchemystAI
  module Resources
    class V1
      class Org
        class Context
          # View organization context
          sig do
            params(
              user_ids: T::Array[String],
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(AlchemystAI::Models::V1::Org::ContextViewResponse)
          end
          def view(user_ids:, request_options: {})
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
