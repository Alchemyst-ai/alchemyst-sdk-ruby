# frozen_string_literal: true

module AlchemystAI
  module Resources
    class V1
      class Org
        class Context
          # View organization context
          #
          # @overload view(user_ids:, request_options: {})
          #
          # @param user_ids [Array<String>]
          # @param request_options [AlchemystAI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [AlchemystAI::Models::V1::Org::ContextViewResponse]
          #
          # @see AlchemystAI::Models::V1::Org::ContextViewParams
          def view(params)
            parsed, options = AlchemystAI::V1::Org::ContextViewParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/org/context/view",
              body: parsed,
              model: AlchemystAI::Models::V1::Org::ContextViewResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [AlchemystAI::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
