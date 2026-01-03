# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Context
        # @return [Alchemystai::Resources::V1::Context::Traces]
        attr_reader :traces

        # @return [Alchemystai::Resources::V1::Context::View]
        attr_reader :view

        # @return [Alchemystai::Resources::V1::Context::Memory]
        attr_reader :memory

        # This endpoint deletes context data based on the provided parameters. It returns
        # a success or error response depending on the result from the context processor.
        #
        # @overload delete(organization_id:, source:, by_doc: nil, by_id: nil, user_id: nil, request_options: {})
        #
        # @param organization_id [String] Organization ID
        #
        # @param source [String] Source identifier for the context
        #
        # @param by_doc [Boolean, nil] Flag to delete by document
        #
        # @param by_id [Boolean, nil] Flag to delete by ID
        #
        # @param user_id [String, nil] Optional user ID
        #
        # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Alchemystai::Models::V1::ContextDeleteParams
        def delete(params)
          parsed, options = Alchemystai::V1::ContextDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/context/delete",
            body: parsed,
            model: Alchemystai::Internal::Type::Unknown,
            options: options
          )
        end

        # This endpoint accepts context data and sends it to a context processor for
        # further handling. It returns a success or error response depending on the result
        # from the context processor.
        #
        # @overload add(context_type:, documents:, scope:, source:, metadata: nil, request_options: {})
        #
        # @param context_type [Symbol, Alchemystai::Models::V1::ContextAddParams::ContextType] Type of context being added
        #
        # @param documents [Array<Alchemystai::Models::V1::ContextAddParams::Document>] Array of documents with content and additional metadata
        #
        # @param scope [Symbol, Alchemystai::Models::V1::ContextAddParams::Scope] Scope of the context
        #
        # @param source [String] The source of the context data
        #
        # @param metadata [Alchemystai::Models::V1::ContextAddParams::Metadata] Additional metadata for the context
        #
        # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Alchemystai::Models::V1::ContextAddResponse]
        #
        # @see Alchemystai::Models::V1::ContextAddParams
        def add(params)
          parsed, options = Alchemystai::V1::ContextAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/context/add",
            body: parsed,
            model: Alchemystai::Models::V1::ContextAddResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Alchemystai::Client]
        def initialize(client:)
          @client = client
          @traces = Alchemystai::Resources::V1::Context::Traces.new(client: client)
          @view = Alchemystai::Resources::V1::Context::View.new(client: client)
          @memory = Alchemystai::Resources::V1::Context::Memory.new(client: client)
        end
      end
    end
  end
end
