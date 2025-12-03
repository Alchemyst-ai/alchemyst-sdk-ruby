# frozen_string_literal: true

module Alchemystai
  module Models
    module V1
      module Org
        # @see Alchemystai::Resources::V1::Org::Context#view
        class ContextViewParams < Alchemystai::Internal::Type::BaseModel
          extend Alchemystai::Internal::Type::RequestParameters::Converter
          include Alchemystai::Internal::Type::RequestParameters

          # @!attribute user_ids
          #   @deprecated
          #
          #   @return [Array<String>]
          required :user_ids, Alchemystai::Internal::Type::ArrayOf[String], api_name: :userIds

          # @!method initialize(user_ids:, request_options: {})
          #   @param user_ids [Array<String>]
          #   @param request_options [Alchemystai::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
