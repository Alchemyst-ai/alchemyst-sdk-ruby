# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class ViewDocsParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::Context::ViewDocsParams,
                Alchemystai::Internal::AnyHash
              )
            end

          # Optional magic key for special access or filtering
          sig { returns(T.nilable(String)) }
          attr_reader :magic_key

          sig { params(magic_key: String).void }
          attr_writer :magic_key

          sig do
            params(
              magic_key: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Optional magic key for special access or filtering
            magic_key: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
