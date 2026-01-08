# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        module AddAsync
          class StatusListParams < Alchemystai::Internal::Type::BaseModel
            extend Alchemystai::Internal::Type::RequestParameters::Converter
            include Alchemystai::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::V1::Context::AddAsync::StatusListParams,
                  Alchemystai::Internal::AnyHash
                )
              end

            # Maximum number of jobs to return
            sig { returns(T.nilable(String)) }
            attr_reader :limit

            sig { params(limit: String).void }
            attr_writer :limit

            # Number of jobs to skip before starting to collect the result set
            sig { returns(T.nilable(String)) }
            attr_reader :offset

            sig { params(offset: String).void }
            attr_writer :offset

            # Type of jobs to list
            sig do
              returns(
                T.nilable(
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                limit: String,
                offset: String,
                type:
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::OrSymbol,
                request_options: Alchemystai::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Maximum number of jobs to return
              limit: nil,
              # Number of jobs to skip before starting to collect the result set
              offset: nil,
              # Type of jobs to list
              type: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  limit: String,
                  offset: String,
                  type:
                    Alchemystai::V1::Context::AddAsync::StatusListParams::Type::OrSymbol,
                  request_options: Alchemystai::RequestOptions
                }
              )
            end
            def to_hash
            end

            # Type of jobs to list
            module Type
              extend Alchemystai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Alchemystai::V1::Context::AddAsync::StatusListParams::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :all,
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::TaggedSymbol
                )
              ACTIVE =
                T.let(
                  :active,
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Alchemystai::V1::Context::AddAsync::StatusListParams::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Alchemystai::V1::Context::AddAsync::StatusListParams::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
