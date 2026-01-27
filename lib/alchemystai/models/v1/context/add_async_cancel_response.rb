# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::AddAsync#cancel
        class AddAsyncCancelResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute job_id
          #
          #   @return [String]
          required :job_id, String, api_name: :jobId

          # @!attribute message
          #
          #   @return [String]
          required :message, String

          # @!attribute status
          #
          #   @return [String]
          required :status, String

          # @!attribute success
          #
          #   @return [Boolean]
          required :success, Alchemystai::Internal::Type::Boolean

          # @!method initialize(job_id:, message:, status:, success:)
          #   @param job_id [String]
          #   @param message [String]
          #   @param status [String]
          #   @param success [Boolean]
        end
      end
    end
  end
end
