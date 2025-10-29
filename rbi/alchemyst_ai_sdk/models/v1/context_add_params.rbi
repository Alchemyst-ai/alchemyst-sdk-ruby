# typed: strong

module AlchemystAISDK
  module Models
    module V1
      class ContextAddParams < AlchemystAISDK::Internal::Type::BaseModel
        extend AlchemystAISDK::Internal::Type::RequestParameters::Converter
        include AlchemystAISDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              AlchemystAISDK::V1::ContextAddParams,
              AlchemystAISDK::Internal::AnyHash
            )
          end

        # Type of context being added
        sig do
          returns(
            T.nilable(
              AlchemystAISDK::V1::ContextAddParams::ContextType::OrSymbol
            )
          )
        end
        attr_reader :context_type

        sig do
          params(
            context_type:
              AlchemystAISDK::V1::ContextAddParams::ContextType::OrSymbol
          ).void
        end
        attr_writer :context_type

        # Array of documents with content and additional metadata
        sig do
          returns(
            T.nilable(T::Array[AlchemystAISDK::V1::ContextAddParams::Document])
          )
        end
        attr_reader :documents

        sig do
          params(
            documents:
              T::Array[AlchemystAISDK::V1::ContextAddParams::Document::OrHash]
          ).void
        end
        attr_writer :documents

        # Additional metadata for the context
        sig do
          returns(T.nilable(AlchemystAISDK::V1::ContextAddParams::Metadata))
        end
        attr_reader :metadata

        sig do
          params(
            metadata: AlchemystAISDK::V1::ContextAddParams::Metadata::OrHash
          ).void
        end
        attr_writer :metadata

        # Scope of the context
        sig do
          returns(
            T.nilable(AlchemystAISDK::V1::ContextAddParams::Scope::OrSymbol)
          )
        end
        attr_reader :scope

        sig do
          params(
            scope: AlchemystAISDK::V1::ContextAddParams::Scope::OrSymbol
          ).void
        end
        attr_writer :scope

        # The source of the context data
        sig { returns(T.nilable(String)) }
        attr_reader :source

        sig { params(source: String).void }
        attr_writer :source

        sig do
          params(
            context_type:
              AlchemystAISDK::V1::ContextAddParams::ContextType::OrSymbol,
            documents:
              T::Array[AlchemystAISDK::V1::ContextAddParams::Document::OrHash],
            metadata: AlchemystAISDK::V1::ContextAddParams::Metadata::OrHash,
            scope: AlchemystAISDK::V1::ContextAddParams::Scope::OrSymbol,
            source: String,
            request_options: AlchemystAISDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of context being added
          context_type: nil,
          # Array of documents with content and additional metadata
          documents: nil,
          # Additional metadata for the context
          metadata: nil,
          # Scope of the context
          scope: nil,
          # The source of the context data
          source: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              context_type:
                AlchemystAISDK::V1::ContextAddParams::ContextType::OrSymbol,
              documents:
                T::Array[AlchemystAISDK::V1::ContextAddParams::Document],
              metadata: AlchemystAISDK::V1::ContextAddParams::Metadata,
              scope: AlchemystAISDK::V1::ContextAddParams::Scope::OrSymbol,
              source: String,
              request_options: AlchemystAISDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Type of context being added
        module ContextType
          extend AlchemystAISDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, AlchemystAISDK::V1::ContextAddParams::ContextType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESOURCE =
            T.let(
              :resource,
              AlchemystAISDK::V1::ContextAddParams::ContextType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :conversation,
              AlchemystAISDK::V1::ContextAddParams::ContextType::TaggedSymbol
            )
          INSTRUCTION =
            T.let(
              :instruction,
              AlchemystAISDK::V1::ContextAddParams::ContextType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                AlchemystAISDK::V1::ContextAddParams::ContextType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Document < AlchemystAISDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                AlchemystAISDK::V1::ContextAddParams::Document,
                AlchemystAISDK::Internal::AnyHash
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

        class Metadata < AlchemystAISDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                AlchemystAISDK::V1::ContextAddParams::Metadata,
                AlchemystAISDK::Internal::AnyHash
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

        # Scope of the context
        module Scope
          extend AlchemystAISDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, AlchemystAISDK::V1::ContextAddParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL =
            T.let(
              :internal,
              AlchemystAISDK::V1::ContextAddParams::Scope::TaggedSymbol
            )
          EXTERNAL =
            T.let(
              :external,
              AlchemystAISDK::V1::ContextAddParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                AlchemystAISDK::V1::ContextAddParams::Scope::TaggedSymbol
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
