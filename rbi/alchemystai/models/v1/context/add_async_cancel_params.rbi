# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class AddAsyncCancelParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::V1::Context::AddAsyncCancelParams,
                Alchemystai::Internal::AnyHash
              )
            end

          sig do
            params(
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns({ request_options: Alchemystai::RequestOptions })
          end
          def to_hash
          end
        end
      end
    end
  end
end
