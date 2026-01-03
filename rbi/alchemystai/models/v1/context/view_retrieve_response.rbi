# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class ViewRetrieveResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::ViewRetrieveResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          # List of context items
          sig do
            returns(
              T::Array[
                Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context
              ]
            )
          end
          attr_accessor :contexts

          sig { returns(T::Boolean) }
          attr_accessor :success

          sig do
            params(
              contexts:
                T::Array[
                  Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::OrHash
                ],
              success: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # List of context items
            contexts:,
            success:
          )
          end

          sig do
            override.returns(
              {
                contexts:
                  T::Array[
                    Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context
                  ],
                success: T::Boolean
              }
            )
          end
          def to_hash
          end

          class Context < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context,
                  Alchemystai::Internal::AnyHash
                )
              end

            # The content of the context item
            sig { returns(T.nilable(String)) }
            attr_reader :content

            sig { params(content: String).void }
            attr_writer :content

            # Additional metadata for the context
            sig do
              returns(
                T.nilable(
                  Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata
                )
              )
            end
            attr_reader :metadata

            sig do
              params(
                metadata:
                  Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata::OrHash
              ).void
            end
            attr_writer :metadata

            sig do
              params(
                content: String,
                metadata:
                  Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The content of the context item
              content: nil,
              # Additional metadata for the context
              metadata: nil
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  metadata:
                    Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata
                }
              )
            end
            def to_hash
            end

            class Metadata < Alchemystai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context::Metadata,
                    Alchemystai::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :file_name

              sig { params(file_name: String).void }
              attr_writer :file_name

              sig { returns(T.nilable(Float)) }
              attr_reader :file_size

              sig { params(file_size: Float).void }
              attr_writer :file_size

              sig { returns(T.nilable(String)) }
              attr_reader :file_type

              sig { params(file_type: String).void }
              attr_writer :file_type

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :group_name

              sig { params(group_name: T::Array[String]).void }
              attr_writer :group_name

              sig { returns(T.nilable(String)) }
              attr_reader :last_modified

              sig { params(last_modified: String).void }
              attr_writer :last_modified

              # Additional metadata for the context
              sig do
                params(
                  file_name: String,
                  file_size: Float,
                  file_type: String,
                  group_name: T::Array[String],
                  last_modified: String
                ).returns(T.attached_class)
              end
              def self.new(
                file_name: nil,
                file_size: nil,
                file_type: nil,
                group_name: nil,
                last_modified: nil
              )
              end

              sig do
                override.returns(
                  {
                    file_name: String,
                    file_size: Float,
                    file_type: String,
                    group_name: T::Array[String],
                    last_modified: String
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
end
