# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class MemoryAddParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::Context::MemoryAddParams,
                Alchemystai::Internal::AnyHash
              )
            end

          # Array of content objects with additional properties allowed
          sig do
            returns(
              T::Array[Alchemystai::V1::Context::MemoryAddParams::Content]
            )
          end
          attr_accessor :contents

          # The ID of the memory
          sig { returns(String) }
          attr_accessor :memory_id

          sig do
            params(
              contents:
                T::Array[
                  Alchemystai::V1::Context::MemoryAddParams::Content::OrHash
                ],
              memory_id: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of content objects with additional properties allowed
            contents:,
            # The ID of the memory
            memory_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                contents:
                  T::Array[Alchemystai::V1::Context::MemoryAddParams::Content],
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
                  Alchemystai::V1::Context::MemoryAddParams::Content,
                  Alchemystai::Internal::AnyHash
                )
              end

            # Unique message ID
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The content of the memory message
            sig { returns(T.nilable(String)) }
            attr_reader :content

            sig { params(content: String).void }
            attr_writer :content

            # Creation timestamp
            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            # Additional metadata for the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # Role of the message sender (e.g., user, assistant)
            sig { returns(T.nilable(String)) }
            attr_reader :role

            sig { params(role: String).void }
            attr_writer :role

            sig do
              params(
                id: String,
                content: String,
                created_at: String,
                metadata: T::Hash[Symbol, T.anything],
                role: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique message ID
              id: nil,
              # The content of the memory message
              content: nil,
              # Creation timestamp
              created_at: nil,
              # Additional metadata for the message
              metadata: nil,
              # Role of the message sender (e.g., user, assistant)
              role: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  content: String,
                  created_at: String,
                  metadata: T::Hash[Symbol, T.anything],
                  role: String
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
end
