# typed: strong

module Alchemystai
  module Resources
    class V1
      class Org
        sig { returns(Alchemystai::Resources::V1::Org::Context) }
        attr_reader :context

        # @api private
        sig { params(client: Alchemystai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
