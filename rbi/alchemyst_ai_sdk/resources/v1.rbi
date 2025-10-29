# typed: strong

module AlchemystAISDK
  module Resources
    class V1
      sig { returns(AlchemystAISDK::Resources::V1::Context) }
      attr_reader :context

      sig { returns(AlchemystAISDK::Resources::V1::Org) }
      attr_reader :org

      # @api private
      sig { params(client: AlchemystAISDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
