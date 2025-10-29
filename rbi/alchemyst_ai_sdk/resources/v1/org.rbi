# typed: strong

module AlchemystAISDK
  module Resources
    class V1
      class Org
        sig { returns(AlchemystAISDK::Resources::V1::Org::Context) }
        attr_reader :context

        # @api private
        sig { params(client: AlchemystAISDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
