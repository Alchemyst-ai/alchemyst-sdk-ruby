# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        class TraceDeleteResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Context::TraceDeleteResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          # The deleted trace data
          sig do
            returns(
              Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace
            )
          end
          attr_reader :trace

          sig do
            params(
              trace:
                Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::OrHash
            ).void
          end
          attr_writer :trace

          sig do
            params(
              trace:
                Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The deleted trace data
            trace:
          )
          end

          sig do
            override.returns(
              {
                trace:
                  Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace
              }
            )
          end
          def to_hash
          end

          class Trace < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace,
                  Alchemystai::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :_id

            sig { params(_id: String).void }
            attr_writer :_id

            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            sig do
              returns(
                T.nilable(
                  Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data::OrHash
              ).void
            end
            attr_writer :data

            sig { returns(T.nilable(String)) }
            attr_reader :organization_id

            sig { params(organization_id: String).void }
            attr_writer :organization_id

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig { returns(T.nilable(String)) }
            attr_reader :user_id

            sig { params(user_id: String).void }
            attr_writer :user_id

            # The deleted trace data
            sig do
              params(
                _id: String,
                created_at: Time,
                data:
                  Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data::OrHash,
                organization_id: String,
                type: String,
                updated_at: Time,
                user_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              _id: nil,
              created_at: nil,
              data: nil,
              organization_id: nil,
              type: nil,
              updated_at: nil,
              user_id: nil
            )
            end

            sig do
              override.returns(
                {
                  _id: String,
                  created_at: Time,
                  data:
                    Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data,
                  organization_id: String,
                  type: String,
                  updated_at: Time,
                  user_id: String
                }
              )
            end
            def to_hash
            end

            class Data < Alchemystai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Alchemystai::Models::V1::Context::TraceDeleteResponse::Trace::Data,
                    Alchemystai::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :file_name

              sig { params(file_name: String).void }
              attr_writer :file_name

              sig { returns(T.nilable(String)) }
              attr_reader :query

              sig { params(query: String).void }
              attr_writer :query

              sig { returns(T.nilable(String)) }
              attr_reader :source

              sig { params(source: String).void }
              attr_writer :source

              sig do
                params(
                  file_name: String,
                  query: String,
                  source: String
                ).returns(T.attached_class)
              end
              def self.new(file_name: nil, query: nil, source: nil)
              end

              sig do
                override.returns(
                  { file_name: String, query: String, source: String }
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
end
