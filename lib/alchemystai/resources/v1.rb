# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      # @return [Alchemystai::Resources::V1::Context]
      attr_reader :context

      # @return [Alchemystai::Resources::V1::Org]
      attr_reader :org

      # @api private
      #
      # @param client [Alchemystai::Client]
      def initialize(client:)
        @client = client
        @context = Alchemystai::Resources::V1::Context.new(client: client)
        @org = Alchemystai::Resources::V1::Org.new(client: client)
      end
    end
  end
end
