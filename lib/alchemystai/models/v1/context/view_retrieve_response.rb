# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::View#retrieve
        class ViewRetrieveResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute context
          #   List of context items
          #
          #   @return [Array<Object>, nil]
          optional :context, Alchemystai::Internal::Type::ArrayOf[Alchemystai::Internal::Type::Unknown]

          # @!method initialize(context: nil)
          #   @param context [Array<Object>] List of context items
        end
      end
    end
  end
end
