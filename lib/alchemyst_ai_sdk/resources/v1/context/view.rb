# frozen_string_literal: true

module AlchemystAISDK
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user
          #
          # @overload retrieve(request_options: {})
          #
          # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [AlchemystAISDK::Models::V1::Context::ViewRetrieveResponse]
          #
          # @see AlchemystAISDK::Models::V1::Context::ViewRetrieveParams
          def retrieve(params = {})
            @client.request(
              method: :get,
              path: "api/v1/context/view",
              model: AlchemystAISDK::Models::V1::Context::ViewRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Fetches documents view for authenticated user with optional organization context
          #
          # @overload docs(request_options: {})
          #
          # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see AlchemystAISDK::Models::V1::Context::ViewDocsParams
          def docs(params = {})
            @client.request(
              method: :get,
              path: "api/v1/context/view/docs",
              model: AlchemystAISDK::Internal::Type::Unknown,
              options: params[:request_options]
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
