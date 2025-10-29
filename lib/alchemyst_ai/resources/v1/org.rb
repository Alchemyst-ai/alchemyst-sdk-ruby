# frozen_string_literal: true

module AlchemystAI
  module Resources
    class V1
      class Org
        # @return [AlchemystAI::Resources::V1::Org::Context]
        attr_reader :context

        # @api private
        #
        # @param client [AlchemystAI::Client]
        def initialize(client:)
          @client = client
          @context = AlchemystAI::Resources::V1::Org::Context.new(client: client)
        end
      end
    end
  end
end
