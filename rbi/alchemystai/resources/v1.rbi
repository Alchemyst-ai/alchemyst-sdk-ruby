# typed: strong

module Alchemystai
  module Resources
    class V1
      sig { returns(Alchemystai::Resources::V1::Context) }
      attr_reader :context

      sig { returns(Alchemystai::Resources::V1::Org) }
      attr_reader :org

      # @api private
      sig { params(client: Alchemystai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
