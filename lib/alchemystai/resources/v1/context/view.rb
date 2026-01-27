# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Context
        class View
          # Gets the context information for the authenticated user.
          #
          # @overload retrieve(file_name: nil, magic_key: nil, request_options: {})
          #
          # @param file_name [String] Name of the file to retrieve context for
          #
          # @param magic_key [String] Magic key for context retrieval
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Context::ViewRetrieveResponse]
          #
          # @see Alchemystai::Models::V1::Context::ViewRetrieveParams
          def retrieve(params = {})
            parsed, options = Alchemystai::V1::Context::ViewRetrieveParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/v1/context/view",
              query: parsed,
              model: Alchemystai::Models::V1::Context::ViewRetrieveResponse,
              options: options
            )
          end

          # Fetches documents view for authenticated user with optional organization
          # context.
          #
          # @overload docs(magic_key: nil, request_options: {})
          #
          # @param magic_key [String] Optional magic key for special access or filtering
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Context::ViewDocsResponse]
          #
          # @see Alchemystai::Models::V1::Context::ViewDocsParams
          def docs(params = {})
            parsed, options = Alchemystai::V1::Context::ViewDocsParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/v1/context/view/docs",
              query: parsed,
              model: Alchemystai::Models::V1::Context::ViewDocsResponse,
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
