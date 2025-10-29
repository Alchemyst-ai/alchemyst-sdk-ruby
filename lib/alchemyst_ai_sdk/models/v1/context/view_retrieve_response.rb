# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      module Context
        # @see AlchemystAISDK::Resources::V1::Context::View#retrieve
        class ViewRetrieveResponse < AlchemystAISDK::Internal::Type::BaseModel
          # @!attribute context
          #   List of context items
          #
          #   @return [Array<Object>, nil]
          optional :context, AlchemystAISDK::Internal::Type::ArrayOf[AlchemystAISDK::Internal::Type::Unknown]

          # @!method initialize(context: nil)
          #   @param context [Array<Object>] List of context items
        end
      end
    end
  end
end
