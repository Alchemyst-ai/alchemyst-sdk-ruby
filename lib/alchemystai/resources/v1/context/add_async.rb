# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Context
        class AddAsync
          # @return [Alchemystai::Resources::V1::Context::AddAsync::Status]
          attr_reader :status

          # This endpoint accepts context data and queues it for asynchronous processing by
          # the context processor. It returns a success or error response depending on the
          # queuing result.
          #
          # @overload create(context_type:, documents:, scope:, source:, metadata: nil, request_options: {})
          #
          # @param context_type [Symbol, Alchemystai::Models::V1::Context::AddAsyncCreateParams::ContextType] Type of context being added
          #
          # @param documents [Array<Alchemystai::Models::V1::Context::AddAsyncCreateParams::Document>] Array of documents with content and additional metadata
          #
          # @param scope [Symbol, Alchemystai::Models::V1::Context::AddAsyncCreateParams::Scope] Scope of the context
          #
          # @param source [String] The source of the context data
          #
          # @param metadata [Alchemystai::Models::V1::Context::AddAsyncCreateParams::Metadata] Additional metadata for the context
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Context::AddAsyncCreateResponse]
          #
          # @see Alchemystai::Models::V1::Context::AddAsyncCreateParams
          def create(params)
            parsed, options = Alchemystai::V1::Context::AddAsyncCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/context/add-async",
              body: parsed,
              model: Alchemystai::Models::V1::Context::AddAsyncCreateResponse,
              options: options
            )
          end

          # Attempts to cancel a context add job by job id.
          #
          # - If the job is already completed or failed, returns 404.
          # - If the job is currently running ("active"), returns 409 and cannot be
          #   cancelled.
          # - Only jobs in "waiting" or "delayed" state can be cancelled.
          #
          # @overload cancel(id, request_options: {})
          #
          # @param id [String] Job ID to cancel
          #
          # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Alchemystai::Models::V1::Context::AddAsyncCancelResponse]
          #
          # @see Alchemystai::Models::V1::Context::AddAsyncCancelParams
          def cancel(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/v1/context/add-async/%1$s/cancel", id],
              model: Alchemystai::Models::V1::Context::AddAsyncCancelResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Alchemystai::Client]
          def initialize(client:)
            @client = client
            @status = Alchemystai::Resources::V1::Context::AddAsync::Status.new(client: client)
          end
        end
      end
    end
  end
end
