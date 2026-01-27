# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Context
        module AddAsync
          # @see Alchemystai::Resources::V1::Context::AddAsync::Status#list
          class StatusListParams < Alchemystai::Internal::Type::BaseModel
            extend Alchemystai::Internal::Type::RequestParameters::Converter
            include Alchemystai::Internal::Type::RequestParameters

            # @!attribute limit
            #   Maximum number of jobs to return
            #
            #   @return [String, nil]
            optional :limit, String

            # @!attribute offset
            #   Number of jobs to skip before starting to collect the result set
            #
            #   @return [String, nil]
            optional :offset, String

            # @!attribute type
            #   Type of jobs to list
            #
            #   @return [Symbol, Alchemystai::Models::V1::Context::AddAsync::StatusListParams::Type, nil]
            optional :type, enum: -> { Alchemystai::V1::Context::AddAsync::StatusListParams::Type }

            # @!method initialize(limit: nil, offset: nil, type: nil, request_options: {})
            #   @param limit [String] Maximum number of jobs to return
            #
            #   @param offset [String] Number of jobs to skip before starting to collect the result set
            #
            #   @param type [Symbol, Alchemystai::Models::V1::Context::AddAsync::StatusListParams::Type] Type of jobs to list
            #
            #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]

            # Type of jobs to list
            module Type
              extend Alchemystai::Internal::Type::Enum

              ALL = :all
              ACTIVE = :active
              FAILED = :failed
              COMPLETED = :completed

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
