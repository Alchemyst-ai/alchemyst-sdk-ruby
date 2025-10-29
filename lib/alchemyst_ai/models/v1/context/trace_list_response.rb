# frozen_string_literal: true

module AlchemystAI
  module Models
    module V1
      module Context
        # @see AlchemystAI::Resources::V1::Context::Traces#list
        class TraceListResponse < AlchemystAI::Internal::Type::BaseModel
          # @!attribute traces
          #
          #   @return [Array<AlchemystAI::Models::V1::Context::TraceListResponse::Trace>, nil]
          optional :traces,
                   -> { AlchemystAI::Internal::Type::ArrayOf[AlchemystAI::Models::V1::Context::TraceListResponse::Trace] }

          # @!method initialize(traces: nil)
          #   @param traces [Array<AlchemystAI::Models::V1::Context::TraceListResponse::Trace>]

          class Trace < AlchemystAI::Internal::Type::BaseModel
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
            #   @return [Object, nil]
            optional :data, AlchemystAI::Internal::Type::Unknown

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

            # @!method initialize(_id: nil, created_at: nil, data: nil, type: nil, updated_at: nil, user_id: nil)
            #   @param _id [String]
            #   @param created_at [Time]
            #   @param data [Object]
            #   @param type [String]
            #   @param updated_at [Time]
            #   @param user_id [String]
          end
        end
      end
    end
  end
end
