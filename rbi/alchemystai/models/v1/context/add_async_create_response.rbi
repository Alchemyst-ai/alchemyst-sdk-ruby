# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class AddAsyncCreateResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::AddAsyncCreateResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :job_id

          sig { returns(T::Boolean) }
          attr_accessor :queued

          sig do
            params(job_id: String, queued: T::Boolean).returns(T.attached_class)
          end
          def self.new(job_id:, queued:)
          end

          sig { override.returns({ job_id: String, queued: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
