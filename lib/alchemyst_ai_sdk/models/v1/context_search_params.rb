# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      # @see AlchemystAISDK::Resources::V1::Context#search
      class ContextSearchParams < AlchemystAISDK::Internal::Type::BaseModel
        extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
        include AlchemystAISDK::Internal::Type::RequestParameters

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
        #   Additional metadata for the search
        #
        #   @return [Object, nil]
        optional :metadata, AlchemystAISDK::Internal::Type::Unknown

        # @!attribute scope
        #   Search scope
        #
        #   @return [Symbol, AlchemystAISDK::Models::V1::ContextSearchParams::Scope, nil]
        optional :scope, enum: -> { AlchemystAISDK::V1::ContextSearchParams::Scope }

        # @!attribute user_id
        #   The ID of the user making the request
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(minimum_similarity_threshold:, query:, similarity_threshold:, metadata: nil, scope: nil, user_id: nil, request_options: {})
        #   @param minimum_similarity_threshold [Float] Minimum similarity threshold
        #
        #   @param query [String] The search query used to search for context data
        #
        #   @param similarity_threshold [Float] Maximum similarity threshold (must be >= minimum_similarity_threshold)
        #
        #   @param metadata [Object] Additional metadata for the search
        #
        #   @param scope [Symbol, AlchemystAISDK::Models::V1::ContextSearchParams::Scope] Search scope
        #
        #   @param user_id [String] The ID of the user making the request
        #
        #   @param request_options [AlchemystAISDK::RequestOptions, Hash{Symbol=>Object}]

        # Search scope
        module Scope
          extend AlchemystAISDK::Internal::Type::Enum

          INTERNAL = :internal
          EXTERNAL = :external

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
