# typed: strong

module Alchemystai
  module Models
    module V1
      class ContextAddParams < Alchemystai::Internal::Type::BaseModel
        extend Alchemystai::Internal::Type::RequestParameters::Converter
        include Alchemystai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Alchemystai::V1::ContextAddParams,
              Alchemystai::Internal::AnyHash
            )
          end

        # Type of context being added
        sig do
          returns(Alchemystai::V1::ContextAddParams::ContextType::OrSymbol)
        end
        attr_accessor :context_type

        # Array of documents with content and additional metadata
        sig { returns(T::Array[Alchemystai::V1::ContextAddParams::Document]) }
        attr_accessor :documents

        # Scope of the context
        sig { returns(Alchemystai::V1::ContextAddParams::Scope::OrSymbol) }
        attr_accessor :scope

        # The source of the context data
        sig { returns(String) }
        attr_accessor :source

        # Additional metadata for the context
        sig { returns(T.nilable(Alchemystai::V1::ContextAddParams::Metadata)) }
        attr_reader :metadata

        sig do
          params(
            metadata: Alchemystai::V1::ContextAddParams::Metadata::OrHash
          ).void
        end
        attr_writer :metadata

        sig do
          params(
            context_type:
              Alchemystai::V1::ContextAddParams::ContextType::OrSymbol,
            documents:
              T::Array[Alchemystai::V1::ContextAddParams::Document::OrHash],
            scope: Alchemystai::V1::ContextAddParams::Scope::OrSymbol,
            source: String,
            metadata: Alchemystai::V1::ContextAddParams::Metadata::OrHash,
            request_options: Alchemystai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of context being added
          context_type:,
          # Array of documents with content and additional metadata
          documents:,
          # Scope of the context
          scope:,
          # The source of the context data
          source:,
          # Additional metadata for the context
          metadata: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              context_type:
                Alchemystai::V1::ContextAddParams::ContextType::OrSymbol,
              documents: T::Array[Alchemystai::V1::ContextAddParams::Document],
              scope: Alchemystai::V1::ContextAddParams::Scope::OrSymbol,
              source: String,
              metadata: Alchemystai::V1::ContextAddParams::Metadata,
              request_options: Alchemystai::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Type of context being added
        module ContextType
          extend Alchemystai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Alchemystai::V1::ContextAddParams::ContextType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESOURCE =
            T.let(
              :resource,
              Alchemystai::V1::ContextAddParams::ContextType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :conversation,
              Alchemystai::V1::ContextAddParams::ContextType::TaggedSymbol
            )
          INSTRUCTION =
            T.let(
              :instruction,
              Alchemystai::V1::ContextAddParams::ContextType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Alchemystai::V1::ContextAddParams::ContextType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Document < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::ContextAddParams::Document,
                Alchemystai::Internal::AnyHash
              )
            end

          # The content of the document
          sig { returns(T.nilable(String)) }
          attr_reader :content

          sig { params(content: String).void }
          attr_writer :content

          sig { params(content: String).returns(T.attached_class) }
          def self.new(
            # The content of the document
            content: nil
          )
          end

          sig { override.returns({ content: String }) }
          def to_hash
          end
        end

        # Scope of the context
        module Scope
          extend Alchemystai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Alchemystai::V1::ContextAddParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL =
            T.let(
              :internal,
              Alchemystai::V1::ContextAddParams::Scope::TaggedSymbol
            )
          EXTERNAL =
            T.let(
              :external,
              Alchemystai::V1::ContextAddParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Alchemystai::V1::ContextAddParams::Scope::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Metadata < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::ContextAddParams::Metadata,
                Alchemystai::Internal::AnyHash
              )
            end

          # Name of the file
          sig { returns(T.nilable(String)) }
          attr_reader :file_name

          sig { params(file_name: String).void }
          attr_writer :file_name

          # Size of the file in bytes
          sig { returns(T.nilable(Float)) }
          attr_reader :file_size

          sig { params(file_size: Float).void }
          attr_writer :file_size

          # Type/MIME of the file
          sig { returns(T.nilable(String)) }
          attr_reader :file_type

          sig { params(file_type: String).void }
          attr_writer :file_type

          # Array of Group Name to which the file belongs to
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :group_name

          sig { params(group_name: T::Array[String]).void }
          attr_writer :group_name

          # Last modified timestamp
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
            # Name of the file
            file_name: nil,
            # Size of the file in bytes
            file_size: nil,
            # Type/MIME of the file
            file_type: nil,
            # Array of Group Name to which the file belongs to
            group_name: nil,
            # Last modified timestamp
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
