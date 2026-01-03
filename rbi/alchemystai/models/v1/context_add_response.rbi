# typed: strong

module Alchemystai
  module Models
    module V1
      class ContextAddResponse < Alchemystai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Alchemystai::Models::V1::ContextAddResponse,
              Alchemystai::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :context_id

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig { returns(T.nilable(Float)) }
        attr_reader :processed_documents

        sig { params(processed_documents: Float).void }
        attr_writer :processed_documents

        sig do
          params(
            context_id: String,
            success: T::Boolean,
            processed_documents: Float
          ).returns(T.attached_class)
        end
        def self.new(context_id:, success:, processed_documents: nil)
        end

        sig do
          override.returns(
            {
              context_id: String,
              success: T::Boolean,
              processed_documents: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
