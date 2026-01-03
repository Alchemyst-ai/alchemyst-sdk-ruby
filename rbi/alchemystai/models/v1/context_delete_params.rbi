# typed: strong

module Alchemystai
  module Models
    module V1
      class ContextDeleteParams < Alchemystai::Internal::Type::BaseModel
        extend Alchemystai::Internal::Type::RequestParameters::Converter
        include Alchemystai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Alchemystai::V1::ContextDeleteParams,
              Alchemystai::Internal::AnyHash
            )
          end

        # Organization ID
        sig { returns(String) }
        attr_accessor :organization_id

        # Source identifier for the context
        sig { returns(String) }
        attr_accessor :source

        # Flag to delete by document
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :by_doc

        # Flag to delete by ID
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :by_id

        # Optional user ID
        sig { returns(T.nilable(String)) }
        attr_accessor :user_id

        sig do
          params(
            organization_id: String,
            source: String,
            by_doc: T.nilable(T::Boolean),
            by_id: T.nilable(T::Boolean),
            user_id: T.nilable(String),
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Organization ID
          organization_id:,
          # Source identifier for the context
          source:,
          # Flag to delete by document
          by_doc: nil,
          # Flag to delete by ID
          by_id: nil,
          # Optional user ID
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              organization_id: String,
              source: String,
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
