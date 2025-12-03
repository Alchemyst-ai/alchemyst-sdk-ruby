# typed: strong

module Alchemystai
  module Models
    module V1
      class ContextSearchParams < Alchemystai::Internal::Type::BaseModel
        extend Alchemystai::Internal::Type::RequestParameters::Converter
        include Alchemystai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Alchemystai::V1::ContextSearchParams,
              Alchemystai::Internal::AnyHash
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
        attr_reader :body_metadata

        sig { params(body_metadata: T.anything).void }
        attr_writer :body_metadata

        # Controls the search mode:
        #
        # - mode=fast → prioritizes speed over completeness.
        # - mode=standard → performs a comprehensive search (default if omitted).
        sig do
          returns(
            T.nilable(Alchemystai::V1::ContextSearchParams::Mode::OrSymbol)
          )
        end
        attr_reader :mode

        sig do
          params(
            mode: Alchemystai::V1::ContextSearchParams::Mode::OrSymbol
          ).void
        end
        attr_writer :mode

        # Search scope
        sig do
          returns(
            T.nilable(Alchemystai::V1::ContextSearchParams::Scope::OrSymbol)
          )
        end
        attr_reader :scope

        sig do
          params(
            scope: Alchemystai::V1::ContextSearchParams::Scope::OrSymbol
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
            body_metadata: T.anything,
            mode: Alchemystai::V1::ContextSearchParams::Mode::OrSymbol,
            scope: Alchemystai::V1::ContextSearchParams::Scope::OrSymbol,
            user_id: String,
            request_options: Alchemystai::RequestOptions::OrHash
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
          body_metadata: nil,
          # Controls the search mode:
          #
          # - mode=fast → prioritizes speed over completeness.
          # - mode=standard → performs a comprehensive search (default if omitted).
          mode: nil,
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
              body_metadata: T.anything,
              mode: Alchemystai::V1::ContextSearchParams::Mode::OrSymbol,
              scope: Alchemystai::V1::ContextSearchParams::Scope::OrSymbol,
              user_id: String,
              request_options: Alchemystai::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Controls the search mode:
        #
        # - mode=fast → prioritizes speed over completeness.
        # - mode=standard → performs a comprehensive search (default if omitted).
        module Mode
          extend Alchemystai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Alchemystai::V1::ContextSearchParams::Mode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FAST =
            T.let(
              :fast,
              Alchemystai::V1::ContextSearchParams::Mode::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Alchemystai::V1::ContextSearchParams::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Alchemystai::V1::ContextSearchParams::Mode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Search scope
        module Scope
          extend Alchemystai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Alchemystai::V1::ContextSearchParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL =
            T.let(
              :internal,
              Alchemystai::V1::ContextSearchParams::Scope::TaggedSymbol
            )
          EXTERNAL =
            T.let(
              :external,
              Alchemystai::V1::ContextSearchParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Alchemystai::V1::ContextSearchParams::Scope::TaggedSymbol
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
