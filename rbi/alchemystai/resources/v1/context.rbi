# typed: strong

module Alchemystai
  module Resources
    class V1
      class Context
        sig { returns(Alchemystai::Resources::V1::Context::Traces) }
        attr_reader :traces

        sig { returns(Alchemystai::Resources::V1::Context::View) }
        attr_reader :view

        sig { returns(Alchemystai::Resources::V1::Context::Memory) }
        attr_reader :memory

        # This endpoint deletes context data based on the provided parameters. It returns
        # a success or error response depending on the result from the context processor.
        sig do
          params(
            organization_id: String,
            source: String,
            by_doc: T.nilable(T::Boolean),
            by_id: T.nilable(T::Boolean),
            user_id: T.nilable(String),
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(
          # Organization ID
          organization_id:,
          # Source identifier for the context
          source:,
          # Flag to delete by document
          by_doc: nil,
          # Flag to delete by ID
          by_id: nil,
          # Optional user ID
          user_id: nil,
          request_options: {}
        )
        end

        # This endpoint accepts context data and sends it to a context processor for
        # further handling. It returns a success or error response depending on the result
        # from the context processor.
        sig do
          params(
            context_type:
              Alchemystai::V1::ContextAddParams::ContextType::OrSymbol,
            documents:
              T::Array[Alchemystai::V1::ContextAddParams::Document::OrHash],
            scope: Alchemystai::V1::ContextAddParams::Scope::OrSymbol,
            source: String,
            metadata: Alchemystai::V1::ContextAddParams::Metadata::OrHash,
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(Alchemystai::Models::V1::ContextAddResponse)
        end
        def add(
          # Type of context being added
          context_type:,
          # Array of documents with content and additional metadata
          documents:,
          # Scope of the context
          scope:,
          # The source of the context data
          source:,
          # Additional metadata for the context
          metadata: nil,
          request_options: {}
        )
        end

        # This endpoint sends a search request to the context processor to retrieve
        # relevant context data based on the provided query.
        sig do
          params(
            minimum_similarity_threshold: Float,
            query: String,
            similarity_threshold: Float,
            metadata: Alchemystai::V1::ContextSearchParams::Metadata::OrSymbol,
            mode: Alchemystai::V1::ContextSearchParams::Mode::OrSymbol,
            body_metadata: T.anything,
            scope: Alchemystai::V1::ContextSearchParams::Scope::OrSymbol,
            user_id: String,
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(Alchemystai::Models::V1::ContextSearchResponse)
        end
        def search(
          # Body param: Minimum similarity threshold
          minimum_similarity_threshold:,
          # Body param: The search query used to search for context data
          query:,
          # Body param: Maximum similarity threshold (must be >=
          # minimum_similarity_threshold)
          similarity_threshold:,
          # Query param: Controls whether metadata is included in the response:
          #
          # - metadata=true → metadata will be included in each context item in the
          #   response.
          # - metadata=false (or omitted) → metadata will be excluded from the response for
          #   better performance.
          metadata: nil,
          # Query param: Controls the search mode:
          #
          # - mode=fast → prioritizes speed over completeness.
          # - mode=standard → performs a comprehensive search (default if omitted).
          mode: nil,
          # Body param: Additional metadata for the search
          body_metadata: nil,
          # Body param: Search scope
          scope: nil,
          # Body param: The ID of the user making the request
          user_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Alchemystai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
