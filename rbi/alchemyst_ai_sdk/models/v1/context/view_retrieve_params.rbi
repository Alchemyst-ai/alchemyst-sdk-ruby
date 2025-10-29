# typed: strong

module AlchemystAISDK
  module Models
    module V1
      module Context
        class ViewRetrieveParams < AlchemystAISDK::Internal::Type::BaseModel
          extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
          include AlchemystAISDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                AlchemystAISDK::V1::Context::ViewRetrieveParams,
                AlchemystAISDK::Internal::AnyHash
              )
            end

          sig do
            params(
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns(
              { request_options: AlchemystAISDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
