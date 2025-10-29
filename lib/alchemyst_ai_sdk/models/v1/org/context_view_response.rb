# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      module Org
        # @see AlchemystAISDK::Resources::V1::Org::Context#view
        class ContextViewResponse < AlchemystAISDK::Internal::Type::BaseModel
          # @!attribute contexts
          #
          #   @return [Object, nil]
          optional :contexts, AlchemystAISDK::Internal::Type::Unknown

          # @!method initialize(contexts: nil)
          #   @param contexts [Object]
        end
      end
    end
  end
end
