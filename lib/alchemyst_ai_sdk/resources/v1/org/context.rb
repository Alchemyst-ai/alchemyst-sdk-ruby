# frozen_string_literal: true

module AlchemystAISDK
  module Resources
    class V1
      class Org
        class Context
          # View organization context
          #
          # @overload view(user_ids:, request_options: {})
          #
          # @param user_ids [Array<String>]
          # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [AlchemystAISDK::Models::V1::Org::ContextViewResponse]
          #
          # @see AlchemystAISDK::Models::V1::Org::ContextViewParams
          def view(params)
            parsed, options = AlchemystAISDK::V1::Org::ContextViewParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/org/context/view",
              body: parsed,
              model: AlchemystAISDK::Models::V1::Org::ContextViewResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [AlchemystAISDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
