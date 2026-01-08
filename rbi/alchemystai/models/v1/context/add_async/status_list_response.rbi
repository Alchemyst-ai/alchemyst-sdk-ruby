# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        module AddAsync
          class StatusListResponse < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::AddAsync::StatusListResponse,
                  Alchemystai::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job
                ]
              )
            end
            attr_accessor :jobs

            sig { returns(T::Boolean) }
            attr_accessor :success

            sig do
              params(
                jobs:
                  T::Array[
                    Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job::OrHash
                  ],
                success: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(jobs:, success:)
            end

            sig do
              override.returns(
                {
                  jobs:
                    T::Array[
                      Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job
                    ],
                  success: T::Boolean
                }
              )
            end
            def to_hash
            end

            class Job < Alchemystai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job,
                    Alchemystai::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :attempts_made

              sig { returns(T.anything) }
              attr_accessor :data

              sig { returns(String) }
              attr_accessor :job_id

              sig { returns(String) }
              attr_accessor :status

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

              sig do
                params(
                  attempts_made: Float,
                  data: T.anything,
                  job_id: String,
                  status: String,
                  failed_reason: String,
                  finished_on: Float,
                  processed_on: Float
                ).returns(T.attached_class)
              end
              def self.new(
                attempts_made:,
                data:,
                job_id:,
                status:,
                failed_reason: nil,
                finished_on: nil,
                processed_on: nil
              )
              end

              sig do
                override.returns(
                  {
                    attempts_made: Float,
                    data: T.anything,
                    job_id: String,
                    status: String,
                    failed_reason: String,
                    finished_on: Float,
                    processed_on: Float
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
