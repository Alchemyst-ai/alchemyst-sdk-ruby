# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Traces#list
        class TraceListResponse < Alchemystai::Internal::Type::BaseModel
          # @!attribute pagination
          #
          #   @return [Alchemystai::Models::V1::Context::TraceListResponse::Pagination]
          required :pagination, -> { Alchemystai::Models::V1::Context::TraceListResponse::Pagination }

          # @!attribute traces
          #
          #   @return [Array<Alchemystai::Models::V1::Context::TraceListResponse::Trace>]
          required :traces,
                   -> { Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::Context::TraceListResponse::Trace] }

          # @!method initialize(pagination:, traces:)
          #   @param pagination [Alchemystai::Models::V1::Context::TraceListResponse::Pagination]
          #   @param traces [Array<Alchemystai::Models::V1::Context::TraceListResponse::Trace>]

          # @see Alchemystai::Models::V1::Context::TraceListResponse#pagination
          class Pagination < Alchemystai::Internal::Type::BaseModel
            # @!attribute has_next_page
            #
            #   @return [Boolean]
            required :has_next_page, Alchemystai::Internal::Type::Boolean, api_name: :hasNextPage

            # @!attribute has_prev_page
            #
            #   @return [Boolean]
            required :has_prev_page, Alchemystai::Internal::Type::Boolean, api_name: :hasPrevPage

            # @!attribute limit
            #
            #   @return [Integer]
            required :limit, Integer

            # @!attribute page
            #
            #   @return [Integer]
            required :page, Integer

            # @!attribute total
            #
            #   @return [Integer]
            required :total, Integer

            # @!attribute total_pages
            #
            #   @return [Integer]
            required :total_pages, Integer, api_name: :totalPages

            # @!method initialize(has_next_page:, has_prev_page:, limit:, page:, total:, total_pages:)
            #   @param has_next_page [Boolean]
            #   @param has_prev_page [Boolean]
            #   @param limit [Integer]
            #   @param page [Integer]
            #   @param total [Integer]
            #   @param total_pages [Integer]
          end

          class Trace < Alchemystai::Internal::Type::BaseModel
            # @!attribute _id
            #
            #   @return [String]
            required :_id, String

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute data
            #
            #   @return [Object]
            required :data, Alchemystai::Internal::Type::Unknown

            # @!attribute organization_id
            #
            #   @return [String]
            required :organization_id, String, api_name: :organizationId

            # @!attribute type
            #
            #   @return [String]
            required :type, String

            # @!attribute updated_at
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute user_id
            #
            #   @return [String]
            required :user_id, String, api_name: :userId

            # @!method initialize(_id:, created_at:, data:, organization_id:, type:, updated_at:, user_id:)
            #   @param _id [String]
            #   @param created_at [Time]
            #   @param data [Object]
            #   @param organization_id [String]
            #   @param type [String]
            #   @param updated_at [Time]
            #   @param user_id [String]
          end
        end
      end
    end
  end
end
