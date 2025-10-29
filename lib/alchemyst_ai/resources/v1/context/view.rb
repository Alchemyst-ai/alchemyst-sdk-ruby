# frozen_string_literal: true

module AlchemystAI
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user
          #
          # @overload retrieve(request_options: {})
          #
          # @param request_options [AlchemystAI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [AlchemystAI::Models::V1::Context::ViewRetrieveResponse]
          #
          # @see AlchemystAI::Models::V1::Context::ViewRetrieveParams
          def retrieve(params = {})
            @client.request(
              method: :get,
              path: "api/v1/context/view",
              model: AlchemystAI::Models::V1::Context::ViewRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Fetches documents view for authenticated user with optional organization context
          #
          # @overload docs(request_options: {})
          #
          # @param request_options [AlchemystAI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see AlchemystAI::Models::V1::Context::ViewDocsParams
          def docs(params = {})
            @client.request(
              method: :get,
              path: "api/v1/context/view/docs",
              model: AlchemystAI::Internal::Type::Unknown,
              options: params[:request_options]
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
