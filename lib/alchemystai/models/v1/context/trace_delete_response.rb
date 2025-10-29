# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Traces#delete
        class TraceDeleteResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute trace
          #   The deleted trace data
          #
          #   @return [Object, nil]
          optional :trace, Alchemystai::Internal::Type::Unknown

          # @!method initialize(trace: nil)
          #   @param trace [Object] The deleted trace data
        end
      end
    end
  end
end
