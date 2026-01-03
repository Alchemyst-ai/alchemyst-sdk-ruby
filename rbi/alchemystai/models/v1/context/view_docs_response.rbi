# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class ViewDocsResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::ViewDocsResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Alchemystai::Models::V1::Context::ViewDocsResponse::Document
              ]
            )
          end
          attr_accessor :documents

          sig do
            params(
              documents:
                T::Array[
                  Alchemystai::Models::V1::Context::ViewDocsResponse::Document::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(documents:)
          end

          sig do
            override.returns(
              {
                documents:
                  T::Array[
                    Alchemystai::Models::V1::Context::ViewDocsResponse::Document
                  ]
              }
            )
          end
          def to_hash
          end

          class Document < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::ViewDocsResponse::Document,
                  Alchemystai::Internal::AnyHash
                )
              end

            # Name of the file
            sig { returns(String) }
            attr_accessor :file_name

            # Size of the file in bytes
            sig { returns(Float) }
            attr_accessor :file_size

            # Type/MIME of the file
            sig { returns(String) }
            attr_accessor :file_type

            # Array of group names to which the file belongs
            sig { returns(T::Array[String]) }
            attr_accessor :group_name

            # Last modified timestamp (ISO format)
            sig { returns(String) }
            attr_accessor :last_modified

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
              # Name of the file
              file_name:,
              # Size of the file in bytes
              file_size:,
              # Type/MIME of the file
              file_type:,
              # Array of group names to which the file belongs
              group_name:,
              # Last modified timestamp (ISO format)
              last_modified:
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
