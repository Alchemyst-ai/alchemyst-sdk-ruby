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
          sig { returns(String) }
          attr_accessor :memory_id

          # Organization ID
          sig { returns(T.nilable(String)) }
          attr_accessor :organization_id

          # Delete by document flag
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :by_doc

          # Delete by ID flag
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :by_id

          # Optional user ID
          sig { returns(T.nilable(String)) }
          attr_accessor :user_id

          sig do
            params(
              memory_id: String,
              organization_id: T.nilable(String),
              by_doc: T.nilable(T::Boolean),
              by_id: T.nilable(T::Boolean),
              user_id: T.nilable(String),
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the memory to delete
            memory_id:,
            # Organization ID
            organization_id:,
            # Delete by document flag
            by_doc: nil,
            # Delete by ID flag
            by_id: nil,
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
                by_doc: T.nilable(T::Boolean),
                by_id: T.nilable(T::Boolean),
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
