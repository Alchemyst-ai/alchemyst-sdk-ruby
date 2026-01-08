# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        module AddAsync
          class StatusRetrieveResponse < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::AddAsync::StatusRetrieveResponse,
                  Alchemystai::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :job_id

            sig { returns(String) }
            attr_accessor :status

            sig { returns(T::Boolean) }
            attr_accessor :success

            sig { returns(T.nilable(Float)) }
            attr_reader :attempts_made

            sig { params(attempts_made: Float).void }
            attr_writer :attempts_made

            sig { returns(T.nilable(String)) }
            attr_reader :failed_reason

            sig { params(failed_reason: String).void }
            attr_writer :failed_reason

            sig { returns(T.nilable(Float)) }
            attr_reader :finished_on

            sig { params(finished_on: Float).void }
            attr_writer :finished_on

            sig { returns(T.nilable(Float)) }
            attr_reader :processed_on

            sig { params(processed_on: Float).void }
            attr_writer :processed_on

            # Result of the job (if available)
            sig { returns(T.nilable(T.anything)) }
            attr_reader :result

            sig { params(result: T.anything).void }
            attr_writer :result

            sig do
              params(
                job_id: String,
                status: String,
                success: T::Boolean,
                attempts_made: Float,
                failed_reason: String,
                finished_on: Float,
                processed_on: Float,
                result: T.anything
              ).returns(T.attached_class)
            end
            def self.new(
              job_id:,
              status:,
              success:,
              attempts_made: nil,
              failed_reason: nil,
              finished_on: nil,
              processed_on: nil,
              # Result of the job (if available)
              result: nil
            )
            end

            sig do
              override.returns(
                {
                  job_id: String,
                  status: String,
                  success: T::Boolean,
                  attempts_made: Float,
                  failed_reason: String,
                  finished_on: Float,
                  processed_on: Float,
                  result: T.anything
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
