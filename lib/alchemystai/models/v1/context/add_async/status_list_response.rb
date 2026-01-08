# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        module AddAsync
          # @see Alchemystai::Resources::V1::Context::AddAsync::Status#list
          class StatusListResponse < Alchemystai::Internal::Type::BaseModel
            # @!attribute jobs
            #
            #   @return [Array<Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job>]
            required :jobs,
                     -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job] }

            # @!attribute success
            #
            #   @return [Boolean]
            required :success, Alchemystai::Internal::Type::Boolean

            # @!method initialize(jobs:, success:)
            #   @param jobs [Array<Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job>]
            #   @param success [Boolean]

            class Job < Alchemystai::Internal::Type::BaseModel
              # @!attribute attempts_made
              #
              #   @return [Float]
              required :attempts_made, Float, api_name: :attemptsMade

              # @!attribute data
              #
              #   @return [Object]
              required :data, Alchemystai::Internal::Type::Unknown

              # @!attribute job_id
              #
              #   @return [String]
              required :job_id, String, api_name: :jobId

              # @!attribute status
              #
              #   @return [String]
              required :status, String

              # @!attribute failed_reason
              #
              #   @return [String, nil]
              optional :failed_reason, String, api_name: :failedReason

              # @!attribute finished_on
              #
              #   @return [Float, nil]
              optional :finished_on, Float, api_name: :finishedOn

              # @!attribute processed_on
              #
              #   @return [Float, nil]
              optional :processed_on, Float, api_name: :processedOn

              # @!method initialize(attempts_made:, data:, job_id:, status:, failed_reason: nil, finished_on: nil, processed_on: nil)
              #   @param attempts_made [Float]
              #   @param data [Object]
              #   @param job_id [String]
              #   @param status [String]
              #   @param failed_reason [String]
              #   @param finished_on [Float]
              #   @param processed_on [Float]
            end
          end
        end
      end
    end
  end
end
