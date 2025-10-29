# typed: strong

module AlchemystAISDK
  module Models
    module V1
      module Context
        class MemoryDeleteParams < AlchemystAISDK::Internal::Type::BaseModel
          extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
          include AlchemystAISDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                AlchemystAISDK::V1::Context::MemoryDeleteParams,
                AlchemystAISDK::Internal::AnyHash
              )
            end

          # The ID of the memory to delete
          sig { returns(T.nilable(String)) }
          attr_reader :memory_id

          sig { params(memory_id: String).void }
          attr_writer :memory_id

          # Optional organization ID
          sig { returns(T.nilable(String)) }
          attr_accessor :organization_id

          # Optional user ID
          sig { returns(T.nilable(String)) }
          attr_accessor :user_id

          sig do
            params(
              memory_id: String,
              organization_id: T.nilable(String),
              user_id: T.nilable(String),
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the memory to delete
            memory_id: nil,
            # Optional organization ID
            organization_id: nil,
            # Optional user ID
            user_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                memory_id: String,
                organization_id: T.nilable(String),
                user_id: T.nilable(String),
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
