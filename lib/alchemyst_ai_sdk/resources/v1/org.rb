# frozen_string_literal: true

module AlchemystAISDK
  module Resources
    class V1
      class Org
        # @return [AlchemystAISDK::Resources::V1::Org::Context]
        attr_reader :context

        # @api private
        #
        # @param client [AlchemystAISDK::Client]
        def initialize(client:)
          @client = client
          @context = AlchemystAISDK::Resources::V1::Org::Context.new(client: client)
        end
      end
    end
  end
end
