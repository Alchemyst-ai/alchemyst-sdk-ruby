# typed: strong

module AlchemystAI
  module Models
    module V1
      class ContextSearchParams < AlchemystAI::Internal::Type::BaseModel
        extend AlchemystAI::Internal::Type::RequestParameters::Converter
        include AlchemystAI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              AlchemystAI::V1::ContextSearchParams,
              AlchemystAI::Internal::AnyHash
            )
          end

        # Minimum similarity threshold
        sig { returns(Float) }
        attr_accessor :minimum_similarity_threshold

        # The search query used to search for context data
        sig { returns(String) }
        attr_accessor :query

        # Maximum similarity threshold (must be >= minimum_similarity_threshold)
        sig { returns(Float) }
        attr_accessor :similarity_threshold

        # Additional metadata for the search
        sig { returns(T.nilable(T.anything)) }
        attr_reader :metadata

        sig { params(metadata: T.anything).void }
        attr_writer :metadata

        # Search scope
        sig do
          returns(
            T.nilable(AlchemystAI::V1::ContextSearchParams::Scope::OrSymbol)
          )
        end
        attr_reader :scope

        sig do
          params(
            scope: AlchemystAI::V1::ContextSearchParams::Scope::OrSymbol
          ).void
        end
        attr_writer :scope

        # The ID of the user making the request
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            minimum_similarity_threshold: Float,
            query: String,
            similarity_threshold: Float,
            metadata: T.anything,
            scope: AlchemystAI::V1::ContextSearchParams::Scope::OrSymbol,
            user_id: String,
            request_options: AlchemystAI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Minimum similarity threshold
          minimum_similarity_threshold:,
          # The search query used to search for context data
          query:,
          # Maximum similarity threshold (must be >= minimum_similarity_threshold)
          similarity_threshold:,
          # Additional metadata for the search
          metadata: nil,
          # Search scope
          scope: nil,
          # The ID of the user making the request
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              minimum_similarity_threshold: Float,
              query: String,
              similarity_threshold: Float,
              metadata: T.anything,
              scope: AlchemystAI::V1::ContextSearchParams::Scope::OrSymbol,
              user_id: String,
              request_options: AlchemystAI::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Search scope
        module Scope
          extend AlchemystAI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, AlchemystAI::V1::ContextSearchParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL =
            T.let(
              :internal,
              AlchemystAI::V1::ContextSearchParams::Scope::TaggedSymbol
            )
          EXTERNAL =
            T.let(
              :external,
              AlchemystAI::V1::ContextSearchParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                AlchemystAI::V1::ContextSearchParams::Scope::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
