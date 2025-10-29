# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user
          #
          # @overload retrieve(request_options: {})
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Context::ViewRetrieveResponse]
          #
          # @see Alchemystai::Models::V1::Context::ViewRetrieveParams
          def retrieve(params = {})
            @client.request(
              method: :get,
              path: "api/v1/context/view",
              model: Alchemystai::Models::V1::Context::ViewRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Fetches documents view for authenticated user with optional organization context
          #
          # @overload docs(request_options: {})
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Alchemystai::Models::V1::Context::ViewDocsParams
          def docs(params = {})
            @client.request(
              method: :get,
              path: "api/v1/context/view/docs",
              model: Alchemystai::Internal::Type::Unknown,
              options: params[:request_options]
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
