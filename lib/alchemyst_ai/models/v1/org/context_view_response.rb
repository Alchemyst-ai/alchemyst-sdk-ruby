# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      module Org
        # @see AlchemystAI::Resources::V1::Org::Context#view
        class ContextViewResponse < AlchemystAI::Internal::Type::BaseModel
          # @!attribute contexts
          #
          #   @return [Object, nil]
          optional :contexts, AlchemystAI::Internal::Type::Unknown

          # @!method initialize(contexts: nil)
          #   @param contexts [Object]
        end
      end
    end
  end
end
