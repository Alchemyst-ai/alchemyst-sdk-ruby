# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class TraceListResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::TraceListResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          sig do
            returns(
              Alchemystai::Models::V1::Context::TraceListResponse::Pagination
            )
          end
          attr_reader :pagination

          sig do
            params(
              pagination:
                Alchemystai::Models::V1::Context::TraceListResponse::Pagination::OrHash
            ).void
          end
          attr_writer :pagination

          sig do
            returns(
              T::Array[
                Alchemystai::Models::V1::Context::TraceListResponse::Trace
              ]
            )
          end
          attr_accessor :traces

          sig do
            params(
              pagination:
                Alchemystai::Models::V1::Context::TraceListResponse::Pagination::OrHash,
              traces:
                T::Array[
                  Alchemystai::Models::V1::Context::TraceListResponse::Trace::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(pagination:, traces:)
          end

          sig do
            override.returns(
              {
                pagination:
                  Alchemystai::Models::V1::Context::TraceListResponse::Pagination,
                traces:
                  T::Array[
                    Alchemystai::Models::V1::Context::TraceListResponse::Trace
                  ]
              }
            )
          end
          def to_hash
          end

          class Pagination < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::TraceListResponse::Pagination,
                  Alchemystai::Internal::AnyHash
                )
              end

            sig { returns(T::Boolean) }
            attr_accessor :has_next_page

            sig { returns(T::Boolean) }
            attr_accessor :has_prev_page

            sig { returns(Integer) }
            attr_accessor :limit

            sig { returns(Integer) }
            attr_accessor :page

            sig { returns(Integer) }
            attr_accessor :total

            sig { returns(Integer) }
            attr_accessor :total_pages

            sig do
              params(
                has_next_page: T::Boolean,
                has_prev_page: T::Boolean,
                limit: Integer,
                page: Integer,
                total: Integer,
                total_pages: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              has_next_page:,
              has_prev_page:,
              limit:,
              page:,
              total:,
              total_pages:
            )
            end

            sig do
              override.returns(
                {
                  has_next_page: T::Boolean,
                  has_prev_page: T::Boolean,
                  limit: Integer,
                  page: Integer,
                  total: Integer,
                  total_pages: Integer
                }
              )
            end
            def to_hash
            end
          end

          class Trace < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::TraceListResponse::Trace,
                  Alchemystai::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :_id

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(T.anything) }
            attr_accessor :data

            sig { returns(String) }
            attr_accessor :organization_id

            sig { returns(String) }
            attr_accessor :type

            sig { returns(Time) }
            attr_accessor :updated_at

            sig { returns(String) }
            attr_accessor :user_id

            sig do
              params(
                _id: String,
                created_at: Time,
                data: T.anything,
                organization_id: String,
                type: String,
                updated_at: Time,
                user_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              _id:,
              created_at:,
              data:,
              organization_id:,
              type:,
              updated_at:,
              user_id:
            )
            end

            sig do
              override.returns(
                {
                  _id: String,
                  created_at: Time,
                  data: T.anything,
                  organization_id: String,
                  type: String,
                  updated_at: Time,
                  user_id: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
