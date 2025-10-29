# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Org
        class Context
          # View organization context
          #
          # @overload view(user_ids:, request_options: {})
          #
          # @param user_ids [Array<String>]
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Org::ContextViewResponse]
          #
          # @see Alchemystai::Models::V1::Org::ContextViewParams
          def view(params)
            parsed, options = Alchemystai::V1::Org::ContextViewParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/org/context/view",
              body: parsed,
              model: Alchemystai::Models::V1::Org::ContextViewResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Alchemystai::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
