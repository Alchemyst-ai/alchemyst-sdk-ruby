# typed: strong

module Alchemystai
  module Resources
    class V1
      class Context
        class AddAsync
          class Status
            # Returns the status and result of a context add job by job id.
            sig do
              params(
                id: String,
                request_options: Alchemystai::RequestOptions::OrHash
              ).returns(
                Alchemystai::Models::V1::Context::AddAsync::StatusRetrieveResponse
              )
            end
            def retrieve(
              # Job ID to check status for
              id,
              request_options: {}
            )
            end

            # Returns all jobs (active, waiting, delayed, failed, completed) belonging to the
            # authenticated user.
            sig do
              params(
                limit: String,
                offset: String,
                type:
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::OrSymbol,
                request_options: Alchemystai::RequestOptions::OrHash
              ).returns(
                Alchemystai::Models::V1::Context::AddAsync::StatusListResponse
              )
            end
            def list(
              # Maximum number of jobs to return
              limit: nil,
              # Number of jobs to skip before starting to collect the result set
              offset: nil,
              # Type of jobs to list
              type: nil,
              request_options: {}
            )
            end

            # @api private
            sig do
              params(client: Alchemystai::Client).returns(T.attached_class)
            end
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
