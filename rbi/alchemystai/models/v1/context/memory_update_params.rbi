# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class MemoryUpdateParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::Context::MemoryUpdateParams,
                Alchemystai::Internal::AnyHash
              )
            end

          # Array of updated content objects
          sig do
            returns(
              T.nilable(
                T::Array[Alchemystai::V1::Context::MemoryUpdateParams::Content]
              )
            )
          end
          attr_reader :contents

          sig do
            params(
              contents:
                T::Array[
                  Alchemystai::V1::Context::MemoryUpdateParams::Content::OrHash
                ]
            ).void
          end
          attr_writer :contents

          # The ID of the memory to update
          sig { returns(T.nilable(String)) }
          attr_reader :memory_id

          sig { params(memory_id: String).void }
          attr_writer :memory_id

          sig do
            params(
              contents:
                T::Array[
                  Alchemystai::V1::Context::MemoryUpdateParams::Content::OrHash
                ],
              memory_id: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of updated content objects
            contents: nil,
            # The ID of the memory to update
            memory_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                contents:
                  T::Array[
                    Alchemystai::V1::Context::MemoryUpdateParams::Content
                  ],
                memory_id: String,
                request_options: Alchemystai::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Content < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::V1::Context::MemoryUpdateParams::Content,
                  Alchemystai::Internal::AnyHash
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
