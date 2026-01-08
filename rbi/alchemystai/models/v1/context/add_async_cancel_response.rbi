# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class AddAsyncCancelResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::AddAsyncCancelResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :job_id

          sig { returns(String) }
          attr_accessor :message

          sig { returns(String) }
          attr_accessor :status

          sig { returns(T::Boolean) }
          attr_accessor :success

          sig do
            params(
              job_id: String,
              message: String,
              status: String,
              success: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(job_id:, message:, status:, success:)
          end

          sig do
            override.returns(
              {
                job_id: String,
                message: String,
                status: String,
                success: T::Boolean
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
