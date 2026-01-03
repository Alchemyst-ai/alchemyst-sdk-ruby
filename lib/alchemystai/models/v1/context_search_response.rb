# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      # @see Alchemystai::Resources::V1::Context#search
      class ContextSearchResponse < Alchemystai::Internal::Type::BaseModel
        # @!attribute contexts
        #
        #   @return [Array<Alchemystai::Models::V1::ContextSearchResponse::Context>, nil]
        optional :contexts,
                 -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::ContextSearchResponse::Context] }

        # @!method initialize(contexts: nil)
        #   @param contexts [Array<Alchemystai::Models::V1::ContextSearchResponse::Context>]

        class Context < Alchemystai::Internal::Type::BaseModel
          # @!attribute content
          #
          #   @return [String, nil]
          optional :content, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute metadata
          #   Only included when query parameter metadata=true
          #
          #   @return [Object, nil]
          optional :metadata, Alchemystai::Internal::Type::Unknown

          # @!attribute score
          #
          #   @return [Float, nil]
          optional :score, Float

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time, api_name: :updatedAt

          # @!method initialize(content: nil, created_at: nil, metadata: nil, score: nil, updated_at: nil)
          #   @param content [String]
          #
          #   @param created_at [Time]
          #
          #   @param metadata [Object] Only included when query parameter metadata=true
          #
          #   @param score [Float]
          #
          #   @param updated_at [Time]
        end
      end
    end
  end
end
