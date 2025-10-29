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

        # Deletes context data based on provided parameters
        sig do
          params(
            by_doc: T.nilable(T::Boolean),
            by_id: T.nilable(T::Boolean),
            organization_id: T.nilable(String),
            source: String,
            user_id: T.nilable(String),
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(
          # Flag to delete by document
          by_doc: nil,
          # Flag to delete by ID
          by_id: nil,
          # Optional organization ID
          organization_id: nil,
          # Source identifier for the context
          source: nil,
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
            metadata: Alchemystai::V1::ContextAddParams::Metadata::OrHash,
            scope: Alchemystai::V1::ContextAddParams::Scope::OrSymbol,
            source: String,
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def add(
          # Type of context being added
          context_type: nil,
          # Array of documents with content and additional metadata
          documents: nil,
          # Additional metadata for the context
          metadata: nil,
          # Scope of the context
          scope: nil,
          # The source of the context data
          source: nil,
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
            metadata: T.anything,
            scope: Alchemystai::V1::ContextSearchParams::Scope::OrSymbol,
            user_id: String,
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(Alchemystai::Models::V1::ContextSearchResponse)
        end
        def search(
          # Minimum similarity threshold
          minimum_similarity_threshold:,
          # The search query used to search for context data
          query:,
          # Maximum similarity threshold (must be >= minimum_similarity_threshold)
          similarity_threshold:,
          # Additional metadata for the search
          metadata: nil,
          # Search scope
          scope: nil,
          # The ID of the user making the request
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
