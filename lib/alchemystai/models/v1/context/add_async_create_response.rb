# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::AddAsync#create
        class AddAsyncCreateResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute job_id
          #
          #   @return [String]
          required :job_id, String, api_name: :jobId

          # @!attribute queued
          #
          #   @return [Boolean]
          required :queued, Alchemystai::Internal::Type::Boolean

          # @!method initialize(job_id:, queued:)
          #   @param job_id [String]
          #   @param queued [Boolean]
        end
      end
    end
  end
end
