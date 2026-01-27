# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        # @see Alchemystai::Resources::V1::Context::Traces#list
        class TraceListParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!attribute limit
          #   Number of traces per page
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute page
          #   Page number for pagination
          #
          #   @return [Integer, nil]
          optional :page, Integer

          # @!method initialize(limit: nil, page: nil, request_options: {})
          #   @param limit [Integer] Number of traces per page
          #
          #   @param page [Integer] Page number for pagination
          #
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
