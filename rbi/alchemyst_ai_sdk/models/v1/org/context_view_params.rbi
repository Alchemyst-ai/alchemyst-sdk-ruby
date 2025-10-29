# typed: strong

module AlchemystAISDK
  module Models
    module V1
      module Org
        class ContextViewParams < AlchemystAISDK::Internal::Type::BaseModel
          extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
          include AlchemystAISDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                AlchemystAISDK::V1::Org::ContextViewParams,
                AlchemystAISDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :user_ids

          sig do
            params(
              user_ids: T::Array[String],
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(user_ids:, request_options: {})
          end

          sig do
            override.returns(
              {
                user_ids: T::Array[String],
                request_options: AlchemystAISDK::RequestOptions
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
