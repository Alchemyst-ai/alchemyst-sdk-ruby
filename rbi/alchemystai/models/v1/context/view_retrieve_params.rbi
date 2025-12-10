# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class ViewRetrieveParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::Context::ViewRetrieveParams,
                Alchemystai::Internal::AnyHash
              )
            end

          # Name of the file to retrieve context for
          sig { returns(T.nilable(String)) }
          attr_reader :file_name

          sig { params(file_name: String).void }
          attr_writer :file_name

          # Magic key for context retrieval
          sig { returns(T.nilable(String)) }
          attr_reader :magic_key

          sig { params(magic_key: String).void }
          attr_writer :magic_key

          sig do
            params(
              file_name: String,
              magic_key: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Name of the file to retrieve context for
            file_name: nil,
            # Magic key for context retrieval
            magic_key: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                file_name: String,
                magic_key: String,
                request_options: Alchemystai::RequestOptions
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
