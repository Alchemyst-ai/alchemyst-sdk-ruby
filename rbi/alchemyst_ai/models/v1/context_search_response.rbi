# typed: strong

module AlchemystAI
  module Models
    module V1
      class ContextSearchResponse < AlchemystAI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              AlchemystAI::Models::V1::ContextSearchResponse,
              AlchemystAI::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[AlchemystAI::Models::V1::ContextSearchResponse::Context]
            )
          )
        end
        attr_reader :contexts

        sig do
          params(
            contexts:
              T::Array[
                AlchemystAI::Models::V1::ContextSearchResponse::Context::OrHash
              ]
          ).void
        end
        attr_writer :contexts

        sig do
          params(
            contexts:
              T::Array[
                AlchemystAI::Models::V1::ContextSearchResponse::Context::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(contexts: nil)
        end

        sig do
          override.returns(
            {
              contexts:
                T::Array[
                  AlchemystAI::Models::V1::ContextSearchResponse::Context
                ]
            }
          )
        end
        def to_hash
        end

        class Context < AlchemystAI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                AlchemystAI::Models::V1::ContextSearchResponse::Context,
                AlchemystAI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :content

          sig { params(content: String).void }
          attr_writer :content

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(T.anything)) }
          attr_reader :metadata

          sig { params(metadata: T.anything).void }
          attr_writer :metadata

          sig { returns(T.nilable(Float)) }
          attr_reader :score

          sig { params(score: Float).void }
          attr_writer :score

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              content: String,
              created_at: Time,
              metadata: T.anything,
              score: Float,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            content: nil,
            created_at: nil,
            metadata: nil,
            score: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                content: String,
                created_at: Time,
                metadata: T.anything,
                score: Float,
                updated_at: Time
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
