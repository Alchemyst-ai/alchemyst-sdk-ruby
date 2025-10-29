# typed: strong

module Alchemystai
  module Models
    module V1
      module Org
        class ContextViewParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::Org::ContextViewParams,
                Alchemystai::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :user_ids

          sig do
            params(
              user_ids: T::Array[String],
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(user_ids:, request_options: {})
          end

          sig do
            override.returns(
              {
                user_ids: T::Array[String],
                request_options: Alchemystai::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
