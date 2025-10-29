# frozen_string_literal: true

module AlchemystAISDK
  module Models
    module V1
      module Context
        # @see AlchemystAISDK::Resources::V1::Context::Traces#delete
        class TraceDeleteResponse < AlchemystAISDK::Internal::Type::BaseModel
          # @!attribute trace
          #   The deleted trace data
          #
          #   @return [Object, nil]
          optional :trace, AlchemystAISDK::Internal::Type::Unknown

          # @!method initialize(trace: nil)
          #   @param trace [Object] The deleted trace data
        end
      end
    end
  end
end
