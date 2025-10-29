# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Org
        # @return [Alchemystai::Resources::V1::Org::Context]
        attr_reader :context

        # @api private
        #
        # @param client [Alchemystai::Client]
        def initialize(client:)
          @client = client
          @context = Alchemystai::Resources::V1::Org::Context.new(client: client)
        end
      end
    end
  end
end
