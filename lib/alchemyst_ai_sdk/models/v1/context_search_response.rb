# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      # @see AlchemystAISDK::Resources::V1::Context#search
      class ContextSearchResponse < AlchemystAISDK::Internal::Type::BaseModel
        # @!attribute contexts
        #
        #   @return [Array<AlchemystAISDK::Models::V1::ContextSearchResponse::Context>, nil]
        optional :contexts,
                 -> { AlchemystAISDK::Internal::Type::ArrayOf[AlchemystAISDK::Models::V1::ContextSearchResponse::Context] }

        # @!method initialize(contexts: nil)
        #   @param contexts [Array<AlchemystAISDK::Models::V1::ContextSearchResponse::Context>]

        class Context < AlchemystAISDK::Internal::Type::BaseModel
          # @!attribute content
          #
          #   @return [String, nil]
          optional :content, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute metadata
          #
          #   @return [Object, nil]
          optional :metadata, AlchemystAISDK::Internal::Type::Unknown

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
          #   @param created_at [Time]
          #   @param metadata [Object]
          #   @param score [Float]
          #   @param updated_at [Time]
        end
      end
    end
  end
end
