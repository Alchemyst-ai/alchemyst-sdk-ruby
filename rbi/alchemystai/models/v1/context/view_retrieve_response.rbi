# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class ViewRetrieveResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::ViewRetrieveResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          # List of context items
          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :context

          sig { params(context: T::Array[T.anything]).void }
          attr_writer :context

          sig do
            params(context: T::Array[T.anything]).returns(T.attached_class)
          end
          def self.new(
            # List of context items
            context: nil
          )
          end

          sig { override.returns({ context: T::Array[T.anything] }) }
          def to_hash
          end
        end
      end
    end
  end
end
