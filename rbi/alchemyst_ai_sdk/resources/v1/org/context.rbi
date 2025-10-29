# typed: strong

module AlchemystAISDK
  module Resources
    class V1
      class Org
        class Context
          # View organization context
          sig do
            params(
              user_ids: T::Array[String],
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(AlchemystAISDK::Models::V1::Org::ContextViewResponse)
          end
          def view(user_ids:, request_options: {})
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
