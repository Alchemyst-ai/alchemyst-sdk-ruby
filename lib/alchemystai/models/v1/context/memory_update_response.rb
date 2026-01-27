# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Memory#update
        class MemoryUpdateResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute memory_id
          #
          #   @return [String]
          required :memory_id, String

          # @!attribute success
          #
          #   @return [Boolean]
          required :success, Alchemystai::Internal::Type::Boolean

          # @!attribute updated_entries
          #
          #   @return [Float]
          required :updated_entries, Float

          # @!method initialize(memory_id:, success:, updated_entries:)
          #   @param memory_id [String]
          #   @param success [Boolean]
          #   @param updated_entries [Float]
        end
      end
    end
  end
end
