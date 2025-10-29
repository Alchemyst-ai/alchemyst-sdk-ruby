# typed: strong

module AlchemystAI
  module Models
    module V1
      class ContextDeleteParams < AlchemystAI::Internal::Type::BaseModel
        extend AlchemystAI::Internal::Type::RequestParameters::Converter
        include AlchemystAI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              AlchemystAI::V1::ContextDeleteParams,
              AlchemystAI::Internal::AnyHash
            )
          end

        # Flag to delete by document
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :by_doc

        # Flag to delete by ID
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :by_id

        # Optional organization ID
        sig { returns(T.nilable(String)) }
        attr_accessor :organization_id

        # Source identifier for the context
        sig { returns(T.nilable(String)) }
        attr_reader :source

        sig { params(source: String).void }
        attr_writer :source

        # Optional user ID
        sig { returns(T.nilable(String)) }
        attr_accessor :user_id

        sig do
          params(
            by_doc: T.nilable(T::Boolean),
            by_id: T.nilable(T::Boolean),
            organization_id: T.nilable(String),
            source: String,
            user_id: T.nilable(String),
            request_options: AlchemystAI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Flag to delete by document
          by_doc: nil,
          # Flag to delete by ID
          by_id: nil,
          # Optional organization ID
          organization_id: nil,
          # Source identifier for the context
          source: nil,
          # Optional user ID
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              by_doc: T.nilable(T::Boolean),
              by_id: T.nilable(T::Boolean),
              organization_id: T.nilable(String),
              source: String,
              user_id: T.nilable(String),
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
