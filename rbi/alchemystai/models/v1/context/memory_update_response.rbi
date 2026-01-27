# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class MemoryUpdateResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::MemoryUpdateResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :memory_id

          sig { returns(T::Boolean) }
          attr_accessor :success

          sig { returns(Float) }
          attr_accessor :updated_entries

          sig do
            params(
              memory_id: String,
              success: T::Boolean,
              updated_entries: Float
            ).returns(T.attached_class)
          end
          def self.new(memory_id:, success:, updated_entries:)
          end

          sig do
            override.returns(
              { memory_id: String, success: T::Boolean, updated_entries: Float }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
