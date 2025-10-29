# typed: strong

module AlchemystAI
  module Models
    module V1
      module Context
        class MemoryAddParams < AlchemystAI::Internal::Type::BaseModel
          extend AlchemystAI::Internal::Type::RequestParameters::Converter
          include AlchemystAI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                AlchemystAI::V1::Context::MemoryAddParams,
                AlchemystAI::Internal::AnyHash
              )
            end

          # Array of content objects with additional properties allowed
          sig do
            returns(
              T.nilable(
                T::Array[AlchemystAI::V1::Context::MemoryAddParams::Content]
              )
            )
          end
          attr_reader :contents

          sig do
            params(
              contents:
                T::Array[
                  AlchemystAI::V1::Context::MemoryAddParams::Content::OrHash
                ]
            ).void
          end
          attr_writer :contents

          # The ID of the memory
          sig { returns(T.nilable(String)) }
          attr_reader :memory_id

          sig { params(memory_id: String).void }
          attr_writer :memory_id

          sig do
            params(
              contents:
                T::Array[
                  AlchemystAI::V1::Context::MemoryAddParams::Content::OrHash
                ],
              memory_id: String,
              request_options: AlchemystAI::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of content objects with additional properties allowed
            contents: nil,
            # The ID of the memory
            memory_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                contents:
                  T::Array[AlchemystAI::V1::Context::MemoryAddParams::Content],
                memory_id: String,
                request_options: AlchemystAI::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Content < AlchemystAI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  AlchemystAI::V1::Context::MemoryAddParams::Content,
                  AlchemystAI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :content

            sig { params(content: String).void }
            attr_writer :content

            sig { params(content: String).returns(T.attached_class) }
            def self.new(content: nil)
            end

            sig { override.returns({ content: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
