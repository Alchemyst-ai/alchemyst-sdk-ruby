# frozen_string_literal: true

module AlchemystAISDK
  module Resources
    class V1
      # @return [AlchemystAISDK::Resources::V1::Context]
      attr_reader :context

      # @return [AlchemystAISDK::Resources::V1::Org]
      attr_reader :org

      # @api private
      #
      # @param client [AlchemystAISDK::Client]
      def initialize(client:)
        @client = client
        @context = AlchemystAISDK::Resources::V1::Context.new(client: client)
        @org = AlchemystAISDK::Resources::V1::Org.new(client: client)
      end
    end
  end
end
