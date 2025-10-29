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
              T.nilable(
                T::Array[
                  Alchemystai::Models::V1::Context::TraceListResponse::Trace
                ]
              )
            )
          end
          attr_reader :traces

          sig do
            params(
              traces:
                T::Array[
                  Alchemystai::Models::V1::Context::TraceListResponse::Trace::OrHash
                ]
            ).void
          end
          attr_writer :traces

          sig do
            params(
              traces:
                T::Array[
                  Alchemystai::Models::V1::Context::TraceListResponse::Trace::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(traces: nil)
          end

          sig do
            override.returns(
              {
                traces:
                  T::Array[
                    Alchemystai::Models::V1::Context::TraceListResponse::Trace
                  ]
              }
            )
          end
          def to_hash
          end

          class Trace < Alchemystai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Alchemystai::Models::V1::Context::TraceListResponse::Trace,
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

            sig { returns(T.nilable(T.anything)) }
            attr_reader :data

            sig { params(data: T.anything).void }
            attr_writer :data

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

            sig do
              params(
                _id: String,
                created_at: Time,
                data: T.anything,
                type: String,
                updated_at: Time,
                user_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              _id: nil,
              created_at: nil,
              data: nil,
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
                  data: T.anything,
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
