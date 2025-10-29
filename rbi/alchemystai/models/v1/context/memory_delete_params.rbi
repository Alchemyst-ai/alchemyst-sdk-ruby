# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class MemoryDeleteParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::Context::MemoryDeleteParams,
                Alchemystai::Internal::AnyHash
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
              request_options: Alchemystai::RequestOptions::OrHash
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
