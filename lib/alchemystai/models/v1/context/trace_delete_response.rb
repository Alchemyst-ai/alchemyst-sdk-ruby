# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Traces#delete
        class TraceDeleteResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute trace
          #   The deleted trace data
          #
          #   @return [Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace]
          required :trace, -> { Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace }

          # @!method initialize(trace:)
          #   @param trace [Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace] The deleted trace data

          # @see Alchemystai::Models::V1::Context::TraceDeleteResponse#trace
          class Trace < Alchemystai::Internal::Type::BaseModel
            # @!attribute _id
            #
            #   @return [String, nil]
            optional :_id, String

            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time, api_name: :createdAt

            # @!attribute data
            #
            #   @return [Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data, nil]
            optional :data, -> { Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data }

            # @!attribute organization_id
            #
            #   @return [String, nil]
            optional :organization_id, String, api_name: :organizationId

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time, api_name: :updatedAt

            # @!attribute user_id
            #
            #   @return [String, nil]
            optional :user_id, String, api_name: :userId

            # @!method initialize(_id: nil, created_at: nil, data: nil, organization_id: nil, type: nil, updated_at: nil, user_id: nil)
            #   The deleted trace data
            #
            #   @param _id [String]
            #   @param created_at [Time]
            #   @param data [Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data]
            #   @param organization_id [String]
            #   @param type [String]
            #   @param updated_at [Time]
            #   @param user_id [String]

            # @see Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace#data
            class Data < Alchemystai::Internal::Type::BaseModel
              # @!attribute file_name
              #
              #   @return [String, nil]
              optional :file_name, String, api_name: :fileName

              # @!attribute query
              #
              #   @return [String, nil]
              optional :query, String

              # @!attribute source
              #
              #   @return [String, nil]
              optional :source, String

              # @!method initialize(file_name: nil, query: nil, source: nil)
              #   @param file_name [String]
              #   @param query [String]
              #   @param source [String]
            end
          end
        end
      end
    end
  end
end
