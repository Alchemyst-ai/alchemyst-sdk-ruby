# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      # @see AlchemystAI::Resources::V1::Context#delete
      class ContextDeleteParams < AlchemystAI::Internal::Type::BaseModel
        extend AlchemystAI::Internal::Type::RequestParameters::Converter
        include AlchemystAI::Internal::Type::RequestParameters

        # @!attribute by_doc
        #   Flag to delete by document
        #
        #   @return [Boolean, nil]
        optional :by_doc, AlchemystAI::Internal::Type::Boolean, nil?: true

        # @!attribute by_id
        #   Flag to delete by ID
        #
        #   @return [Boolean, nil]
        optional :by_id, AlchemystAI::Internal::Type::Boolean, nil?: true

        # @!attribute organization_id
        #   Optional organization ID
        #
        #   @return [String, nil]
        optional :organization_id, String, nil?: true

        # @!attribute source
        #   Source identifier for the context
        #
        #   @return [String, nil]
        optional :source, String

        # @!attribute user_id
        #   Optional user ID
        #
        #   @return [String, nil]
        optional :user_id, String, nil?: true

        # @!method initialize(by_doc: nil, by_id: nil, organization_id: nil, source: nil, user_id: nil, request_options: {})
        #   @param by_doc [Boolean, nil] Flag to delete by document
        #
        #   @param by_id [Boolean, nil] Flag to delete by ID
        #
        #   @param organization_id [String, nil] Optional organization ID
        #
        #   @param source [String] Source identifier for the context
        #
        #   @param user_id [String, nil] Optional user ID
        #
        #   @param request_options [AlchemystAI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
