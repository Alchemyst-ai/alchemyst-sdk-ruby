# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Org
        # @see Alchemystai::Resources::V1::Org::Context#view
        class ContextViewResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute contexts
          #
          #   @return [Object, nil]
          optional :contexts, Alchemystai::Internal::Type::Unknown

          # @!method initialize(contexts: nil)
          #   @param contexts [Object]
        end
      end
    end
  end
end
