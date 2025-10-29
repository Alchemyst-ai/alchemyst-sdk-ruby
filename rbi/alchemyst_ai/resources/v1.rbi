# typed: strong

module AlchemystAI
  module Resources
    class V1
      sig { returns(AlchemystAI::Resources::V1::Context) }
      attr_reader :context

      sig { returns(AlchemystAI::Resources::V1::Org) }
      attr_reader :org

      # @api private
      sig { params(client: AlchemystAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
