# typed: strong

module AlchemystAI
  module Resources
    class V1
      class Org
        sig { returns(AlchemystAI::Resources::V1::Org::Context) }
        attr_reader :context

        # @api private
        sig { params(client: AlchemystAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
