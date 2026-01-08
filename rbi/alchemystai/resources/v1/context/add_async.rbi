# typed: strong

module Alchemystai
  module Resources
    class V1
      class Context
        class AddAsync
          sig { returns(Alchemystai::Resources::V1::Context::AddAsync::Status) }
          attr_reader :status

          # This endpoint accepts context data and queues it for asynchronous processing by
          # the context processor. It returns a success or error response depending on the
          # queuing result.
          sig do
            params(
              context_type:
                Alchemystai::V1::Context::AddAsyncCreateParams::ContextType::OrSymbol,
              documents:
                T::Array[
                  Alchemystai::V1::Context::AddAsyncCreateParams::Document::OrHash
                ],
              scope:
                Alchemystai::V1::Context::AddAsyncCreateParams::Scope::OrSymbol,
              source: String,
              metadata:
                Alchemystai::V1::Context::AddAsyncCreateParams::Metadata::OrHash,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Context::AddAsyncCreateResponse)
          end
          def create(
            # Type of context being added
            context_type:,
            # Array of documents with content and additional metadata
            documents:,
            # Scope of the context
            scope:,
            # The source of the context data
            source:,
            # Additional metadata for the context
            metadata: nil,
            request_options: {}
          )
          end

          # Attempts to cancel a context add job by job id.
          #
          # - If the job is already completed or failed, returns 404.
          # - If the job is currently running ("active"), returns 409 and cannot be
          #   cancelled.
          # - Only jobs in "waiting" or "delayed" state can be cancelled.
          sig do
            params(
              id: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Context::AddAsyncCancelResponse)
          end
          def cancel(
            # Job ID to cancel
            id,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Alchemystai::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
