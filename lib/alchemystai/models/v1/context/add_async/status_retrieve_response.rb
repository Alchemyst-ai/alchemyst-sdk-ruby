# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        module AddAsync
          # @see Alchemystai::Resources::V1::Context::AddAsync::Status#retrieve
          class StatusRetrieveResponse < Alchemystai::Internal::Type::BaseModel
            # @!attribute job_id
            #
            #   @return [String]
            required :job_id, String, api_name: :jobId

            # @!attribute status
            #
            #   @return [String]
            required :status, String

            # @!attribute success
            #
            #   @return [Boolean]
            required :success, Alchemystai::Internal::Type::Boolean

            # @!attribute attempts_made
            #
            #   @return [Float, nil]
            optional :attempts_made, Float, api_name: :attemptsMade

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

            # @!attribute result
            #   Result of the job (if available)
            #
            #   @return [Object, nil]
            optional :result, Alchemystai::Internal::Type::Unknown

            # @!method initialize(job_id:, status:, success:, attempts_made: nil, failed_reason: nil, finished_on: nil, processed_on: nil, result: nil)
            #   @param job_id [String]
            #
            #   @param status [String]
            #
            #   @param success [Boolean]
            #
            #   @param attempts_made [Float]
            #
            #   @param failed_reason [String]
            #
            #   @param finished_on [Float]
            #
            #   @param processed_on [Float]
            #
            #   @param result [Object] Result of the job (if available)
          end
        end
      end
    end
  end
end
