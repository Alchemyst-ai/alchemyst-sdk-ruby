# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      # @see Alchemystai::Resources::V1::Context#add
      class ContextAddResponse < Alchemystai::Internal::Type::BaseModel
        # @!attribute context_id
        #
        #   @return [String]
        required :context_id, String

        # @!attribute success
        #
        #   @return [Boolean]
        required :success, Alchemystai::Internal::Type::Boolean

        # @!attribute processed_documents
        #
        #   @return [Float, nil]
        optional :processed_documents, Float

        # @!method initialize(context_id:, success:, processed_documents: nil)
        #   @param context_id [String]
        #   @param success [Boolean]
        #   @param processed_documents [Float]
      end
    end
  end
end
