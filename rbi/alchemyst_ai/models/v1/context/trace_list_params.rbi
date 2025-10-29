# typed: strong

module AlchemystAI
  module Models
    module V1
      module Context
        class TraceListParams < AlchemystAI::Internal::Type::BaseModel
          extend AlchemystAI::Internal::Type::RequestParameters::Converter
          include AlchemystAI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                AlchemystAI::V1::Context::TraceListParams,
                AlchemystAI::Internal::AnyHash
              )
            end

          sig do
            params(
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns({ request_options: AlchemystAI::RequestOptions })
          end
          def to_hash
          end
        end
      end
    end
  end
end
