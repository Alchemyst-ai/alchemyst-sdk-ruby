# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      # @see Alchemystai::Resources::V1::Context#delete
      class ContextDeleteParams < Alchemystai::Internal::Type::BaseModel
        extend Alchemystai::Internal::Type::RequestParameters::Converter
        include Alchemystai::Internal::Type::RequestParameters

        # @!attribute organization_id
        #   Organization ID
        #
        #   @return [String]
        required :organization_id, String

        # @!attribute source
        #   Source identifier for the context
        #
        #   @return [String]
        required :source, String

        # @!attribute by_doc
        #   Flag to delete by document
        #
        #   @return [Boolean, nil]
        optional :by_doc, Alchemystai::Internal::Type::Boolean, nil?: true

        # @!attribute by_id
        #   Flag to delete by ID
        #
        #   @return [Boolean, nil]
        optional :by_id, Alchemystai::Internal::Type::Boolean, nil?: true

        # @!attribute user_id
        #   @deprecated
        #
        #   Optional user ID
        #
        #   @return [String, nil]
        optional :user_id, String, nil?: true

        # @!method initialize(organization_id:, source:, by_doc: nil, by_id: nil, user_id: nil, request_options: {})
        #   @param organization_id [String] Organization ID
        #
        #   @param source [String] Source identifier for the context
        #
        #   @param by_doc [Boolean, nil] Flag to delete by document
        #
        #   @param by_id [Boolean, nil] Flag to delete by ID
        #
        #   @param user_id [String, nil] Optional user ID
        #
        #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
