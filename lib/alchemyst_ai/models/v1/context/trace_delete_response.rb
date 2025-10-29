# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      module Context
        # @see AlchemystAI::Resources::V1::Context::Traces#delete
        class TraceDeleteResponse < AlchemystAI::Internal::Type::BaseModel
          # @!attribute trace
          #   The deleted trace data
          #
          #   @return [Object, nil]
          optional :trace, AlchemystAI::Internal::Type::Unknown

          # @!method initialize(trace: nil)
          #   @param trace [Object] The deleted trace data
        end
      end
    end
  end
end
