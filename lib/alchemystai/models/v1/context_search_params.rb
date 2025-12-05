# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      # @see Alchemystai::Resources::V1::Context#search
      class ContextSearchParams < Alchemystai::Internal::Type::BaseModel
        extend Alchemystai::Internal::Type::RequestParameters::Converter
        include Alchemystai::Internal::Type::RequestParameters

        # @!attribute minimum_similarity_threshold
        #   @deprecated
        #
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

        # @!attribute body_metadata
        #   Additional metadata for the search
        #
        #   @return [Object, nil]
        optional :body_metadata, Alchemystai::Internal::Type::Unknown, api_name: :metadata

        # @!attribute mode
        #   Controls the search mode:
        #
        #   - mode=fast → prioritizes speed over completeness.
        #   - mode=standard → performs a comprehensive search (default if omitted).
        #
        #   @return [Symbol, Alchemystai::Models::V1::ContextSearchParams::Mode, nil]
        optional :mode, enum: -> { Alchemystai::V1::ContextSearchParams::Mode }

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

        # @!method initialize(minimum_similarity_threshold:, query:, similarity_threshold:, body_metadata: nil, mode: nil, scope: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Alchemystai::Models::V1::ContextSearchParams} for more details.
        #
        #   @param minimum_similarity_threshold [Float] Minimum similarity threshold
        #
        #   @param query [String] The search query used to search for context data
        #
        #   @param similarity_threshold [Float] Maximum similarity threshold (must be >= minimum_similarity_threshold)
        #
        #   @param body_metadata [Object] Additional metadata for the search
        #
        #   @param mode [Symbol, Alchemystai::Models::V1::ContextSearchParams::Mode] Controls the search mode:
        #
        #   @param scope [Symbol, Alchemystai::Models::V1::ContextSearchParams::Scope] Search scope
        #
        #   @param user_id [String] The ID of the user making the request
        #
        #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]

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
