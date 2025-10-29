# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      module Context
        # @see AlchemystAI::Resources::V1::Context::View#retrieve
        class ViewRetrieveResponse < AlchemystAI::Internal::Type::BaseModel
          # @!attribute context
          #   List of context items
          #
          #   @return [Array<Object>, nil]
          optional :context, AlchemystAI::Internal::Type::ArrayOf[AlchemystAI::Internal::Type::Unknown]

          # @!method initialize(context: nil)
          #   @param context [Array<Object>] List of context items
        end
      end
    end
  end
end
