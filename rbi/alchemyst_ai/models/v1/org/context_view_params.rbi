# typed: strong

module AlchemystAI
  module Models
    module V1
      module Org
        class ContextViewParams < AlchemystAI::Internal::Type::BaseModel
          extend AlchemystAI::Internal::Type::RequestParameters::Converter
          include AlchemystAI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                AlchemystAI::V1::Org::ContextViewParams,
                AlchemystAI::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :user_ids

          sig do
            params(
              user_ids: T::Array[String],
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(user_ids:, request_options: {})
          end

          sig do
            override.returns(
              {
                user_ids: T::Array[String],
                request_options: AlchemystAI::RequestOptions
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
