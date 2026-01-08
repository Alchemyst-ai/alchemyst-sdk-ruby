# frozen_string_literal: true

module Alchemystai
  module Resources
    class V1
      class Context
        class AddAsync
          class Status
            # Returns the status and result of a context add job by job id.
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String] Job ID to check status for
            #
            # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Alchemystai::Models::V1::Context::AddAsync::StatusRetrieveResponse]
            #
            # @see Alchemystai::Models::V1::Context::AddAsync::StatusRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["api/v1/context/add-async/%1$s/status", id],
                model: Alchemystai::Models::V1::Context::AddAsync::StatusRetrieveResponse,
                options: params[:request_options]
              )
            end

            # Returns all jobs (active, waiting, delayed, failed, completed) belonging to the
            # authenticated user.
            #
            # @overload list(limit: nil, offset: nil, type: nil, request_options: {})
            #
            # @param limit [String] Maximum number of jobs to return
            #
            # @param offset [String] Number of jobs to skip before starting to collect the result set
            #
            # @param type [Symbol, Alchemystai::Models::V1::Context::AddAsync::StatusListParams::Type] Type of jobs to list
            #
            # @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Alchemystai::Models::V1::Context::AddAsync::StatusListResponse]
            #
            # @see Alchemystai::Models::V1::Context::AddAsync::StatusListParams
            def list(params = {})
              parsed, options = Alchemystai::V1::Context::AddAsync::StatusListParams.dump_request(params)
              @client.request(
                method: :get,
                path: "api/v1/context/add-async/status",
                query: parsed,
                model: Alchemystai::Models::V1::Context::AddAsync::StatusListResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Alchemystai::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
