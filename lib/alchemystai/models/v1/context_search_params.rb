# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      # @see Alchemystai::Resources::V1::Context#search
      class ContextSearchParams < Alchemystai::Internal::Type::BaseModel
        extend Alchemystai::Internal::Type::RequestParameters::Converter
        include Alchemystai::Internal::Type::RequestParameters

        # @!attribute minimum_similarity_threshold
        #   Minimum similarity threshold
        #
        #   @return [Float]
        required :minimum_similarity_threshold, Float

        # @!attribute query
        #   The search query used to search for context data
        #
        #   @return [String]
        required :query, String

        # @!attribute similarity_threshold
        #   Maximum similarity threshold (must be >= minimum_similarity_threshold)
        #
        #   @return [Float]
        required :similarity_threshold, Float

        # @!attribute metadata
        #   Controls whether metadata is included in the response:
        #
        #   - metadata=true → metadata will be included in each context item in the
        #     response.
        #   - metadata=false (or omitted) → metadata will be excluded from the response for
        #     better performance.
        #
        #   @return [Symbol, Alchemystai::Models::V1::ContextSearchParams::Metadata, nil]
        optional :metadata, enum: -> { Alchemystai::V1::ContextSearchParams::Metadata }

        # @!attribute mode
        #   Controls the search mode:
        #
        #   - mode=fast → prioritizes speed over completeness.
        #   - mode=standard → performs a comprehensive search (default if omitted).
        #
        #   @return [Symbol, Alchemystai::Models::V1::ContextSearchParams::Mode, nil]
        optional :mode, enum: -> { Alchemystai::V1::ContextSearchParams::Mode }

        # @!attribute body_metadata
        #   Additional metadata for the search
        #
        #   @return [Object, nil]
        optional :body_metadata, Alchemystai::Internal::Type::Unknown

        # @!attribute scope
        #   Search scope
        #
        #   @return [Symbol, Alchemystai::Models::V1::ContextSearchParams::Scope, nil]
        optional :scope, enum: -> { Alchemystai::V1::ContextSearchParams::Scope }

        # @!attribute user_id
        #   @deprecated
        #
        #   The ID of the user making the request
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(minimum_similarity_threshold:, query:, similarity_threshold:, metadata: nil, mode: nil, body_metadata: nil, scope: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Alchemystai::Models::V1::ContextSearchParams} for more details.
        #
        #   @param minimum_similarity_threshold [Float] Minimum similarity threshold
        #
        #   @param query [String] The search query used to search for context data
        #
        #   @param similarity_threshold [Float] Maximum similarity threshold (must be >= minimum_similarity_threshold)
        #
        #   @param metadata [Symbol, Alchemystai::Models::V1::ContextSearchParams::Metadata] Controls whether metadata is included in the response:
        #
        #   @param mode [Symbol, Alchemystai::Models::V1::ContextSearchParams::Mode] Controls the search mode:
        #
        #   @param body_metadata [Object] Additional metadata for the search
        #
        #   @param scope [Symbol, Alchemystai::Models::V1::ContextSearchParams::Scope] Search scope
        #
        #   @param user_id [String] The ID of the user making the request
        #
        #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]

        # Controls whether metadata is included in the response:
        #
        # - metadata=true → metadata will be included in each context item in the
        #   response.
        # - metadata=false (or omitted) → metadata will be excluded from the response for
        #   better performance.
        module Metadata
          extend Alchemystai::Internal::Type::Enum

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Controls the search mode:
        #
        # - mode=fast → prioritizes speed over completeness.
        # - mode=standard → performs a comprehensive search (default if omitted).
        module Mode
          extend Alchemystai::Internal::Type::Enum

          FAST = :fast
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Search scope
        module Scope
          extend Alchemystai::Internal::Type::Enum

          INTERNAL = :internal
          EXTERNAL = :external

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
