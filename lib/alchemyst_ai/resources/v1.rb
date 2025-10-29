# frozen_string_literal: true

module AlchemystAI
  module Resources
    class V1
      # @return [AlchemystAI::Resources::V1::Context]
      attr_reader :context

      # @return [AlchemystAI::Resources::V1::Org]
      attr_reader :org

      # @api private
      #
      # @param client [AlchemystAI::Client]
      def initialize(client:)
        @client = client
        @context = AlchemystAI::Resources::V1::Context.new(client: client)
        @org = AlchemystAI::Resources::V1::Org.new(client: client)
      end
    end
  end
end
