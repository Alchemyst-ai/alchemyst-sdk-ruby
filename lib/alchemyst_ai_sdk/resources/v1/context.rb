# frozen_string_literal: true

module AlchemystAISDK
  module Resources
    class V1
      class Context
        # @return [AlchemystAISDK::Resources::V1::Context::Traces]
        attr_reader :traces

        # @return [AlchemystAISDK::Resources::V1::Context::View]
        attr_reader :view

        # @return [AlchemystAISDK::Resources::V1::Context::Memory]
        attr_reader :memory

        # Deletes context data based on provided parameters
        #
        # @overload delete(by_doc: nil, by_id: nil, organization_id: nil, source: nil, user_id: nil, request_options: {})
        #
        # @param by_doc [Boolean, nil] Flag to delete by document
        #
        # @param by_id [Boolean, nil] Flag to delete by ID
        #
        # @param organization_id [String, nil] Optional organization ID
        #
        # @param source [String] Source identifier for the context
        #
        # @param user_id [String, nil] Optional user ID
        #
        # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see AlchemystAISDK::Models::V1::ContextDeleteParams
        def delete(params = {})
          parsed, options = AlchemystAISDK::V1::ContextDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/context/delete",
            body: parsed,
            model: AlchemystAISDK::Internal::Type::Unknown,
            options: options
          )
        end

        # This endpoint accepts context data and sends it to a context processor for
        # further handling. It returns a success or error response depending on the result
        # from the context processor.
        #
        # @overload add(context_type: nil, documents: nil, metadata: nil, scope: nil, source: nil, request_options: {})
        #
        # @param context_type [Symbol, AlchemystAISDK::Models::V1::ContextAddParams::ContextType] Type of context being added
        #
        # @param documents [Array<AlchemystAISDK::Models::V1::ContextAddParams::Document>] Array of documents with content and additional metadata
        #
        # @param metadata [AlchemystAISDK::Models::V1::ContextAddParams::Metadata] Additional metadata for the context
        #
        # @param scope [Symbol, AlchemystAISDK::Models::V1::ContextAddParams::Scope] Scope of the context
        #
        # @param source [String] The source of the context data
        #
        # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see AlchemystAISDK::Models::V1::ContextAddParams
        def add(params = {})
          parsed, options = AlchemystAISDK::V1::ContextAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/context/add",
            body: parsed,
            model: AlchemystAISDK::Internal::Type::Unknown,
            options: options
          )
        end

        # This endpoint sends a search request to the context processor to retrieve
        # relevant context data based on the provided query.
        #
        # @overload search(minimum_similarity_threshold:, query:, similarity_threshold:, metadata: nil, scope: nil, user_id: nil, request_options: {})
        #
        # @param minimum_similarity_threshold [Float] Minimum similarity threshold
        #
        # @param query [String] The search query used to search for context data
        #
        # @param similarity_threshold [Float] Maximum similarity threshold (must be >= minimum_similarity_threshold)
        #
        # @param metadata [Object] Additional metadata for the search
        #
        # @param scope [Symbol, AlchemystAISDK::Models::V1::ContextSearchParams::Scope] Search scope
        #
        # @param user_id [String] The ID of the user making the request
        #
        # @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [AlchemystAISDK::Models::V1::ContextSearchResponse]
        #
        # @see AlchemystAISDK::Models::V1::ContextSearchParams
        def search(params)
          parsed, options = AlchemystAISDK::V1::ContextSearchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/context/search",
            body: parsed,
            model: AlchemystAISDK::Models::V1::ContextSearchResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [AlchemystAISDK::Client]
        def initialize(client:)
          @client = client
          @traces = AlchemystAISDK::Resources::V1::Context::Traces.new(client: client)
          @view = AlchemystAISDK::Resources::V1::Context::View.new(client: client)
          @memory = AlchemystAISDK::Resources::V1::Context::Memory.new(client: client)
        end
      end
    end
  end
end
