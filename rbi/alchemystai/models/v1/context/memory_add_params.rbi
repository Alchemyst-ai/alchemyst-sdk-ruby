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

          # Array of content objects with metadata
          sig do
            returns(
              T::Array[Alchemystai::V1::Context::MemoryAddParams::Content]
            )
          end
          attr_accessor :contents

          # The ID of the memory
          sig { returns(String) }
          attr_accessor :memory_id

          # Optional metadata with groupName defaulting to ["default"]
          sig do
            returns(
              T.nilable(Alchemystai::V1::Context::MemoryAddParams::Metadata)
            )
          end
          attr_reader :metadata

          sig do
            params(
              metadata:
                Alchemystai::V1::Context::MemoryAddParams::Metadata::OrHash
            ).void
          end
          attr_writer :metadata

          sig do
            params(
              contents:
                T::Array[
                  Alchemystai::V1::Context::MemoryAddParams::Content::OrHash
                ],
              memory_id: String,
              metadata:
                Alchemystai::V1::Context::MemoryAddParams::Metadata::OrHash,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of content objects with metadata
            contents:,
            # The ID of the memory
            memory_id:,
            # Optional metadata with groupName defaulting to ["default"]
            metadata: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                contents:
                  T::Array[Alchemystai::V1::Context::MemoryAddParams::Content],
                memory_id: String,
                metadata: Alchemystai::V1::Context::MemoryAddParams::Metadata,
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

            # The content of the memory message
            sig { returns(String) }
            attr_accessor :content

            sig do
              returns(
                Alchemystai::V1::Context::MemoryAddParams::Content::Metadata
              )
            end
            attr_reader :metadata

            sig do
              params(
                metadata:
                  Alchemystai::V1::Context::MemoryAddParams::Content::Metadata::OrHash
              ).void
            end
            attr_writer :metadata

            sig do
              params(
                content: String,
                metadata:
                  Alchemystai::V1::Context::MemoryAddParams::Content::Metadata::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The content of the memory message
              content:,
              metadata:
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  metadata:
                    Alchemystai::V1::Context::MemoryAddParams::Content::Metadata
                }
              )
            end
            def to_hash
            end

            class Metadata < Alchemystai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Alchemystai::V1::Context::MemoryAddParams::Content::Metadata,
                    Alchemystai::Internal::AnyHash
                  )
                end

              # Unique message ID
              sig { returns(String) }
              attr_accessor :message_id

              sig { params(message_id: String).returns(T.attached_class) }
              def self.new(
                # Unique message ID
                message_id:
              )
              end

              sig { override.returns({ message_id: String }) }
              def to_hash
              end
            end
          end

          class Metadata < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::V1::Context::MemoryAddParams::Metadata,
                  Alchemystai::Internal::AnyHash
                )
              end

            # Group names for the memory context
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :group_name

            sig { params(group_name: T::Array[String]).void }
            attr_writer :group_name

            # Optional metadata with groupName defaulting to ["default"]
            sig do
              params(group_name: T::Array[String]).returns(T.attached_class)
            end
            def self.new(
              # Group names for the memory context
              group_name: nil
            )
            end

            sig { override.returns({ group_name: T::Array[String] }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
