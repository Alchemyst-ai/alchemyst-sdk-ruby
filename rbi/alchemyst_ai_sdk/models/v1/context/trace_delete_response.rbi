# typed: strong

module AlchemystAISDK
  module Models
    module V1
      module Context
        class TraceDeleteResponse < AlchemystAISDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                AlchemystAISDK::Models::V1::Context::TraceDeleteResponse,
                AlchemystAISDK::Internal::AnyHash
              )
            end

          # The deleted trace data
          sig { returns(T.nilable(T.anything)) }
          attr_reader :trace

          sig { params(trace: T.anything).void }
          attr_writer :trace

          sig { params(trace: T.anything).returns(T.attached_class) }
          def self.new(
            # The deleted trace data
            trace: nil
          )
          end

          sig { override.returns({ trace: T.anything }) }
          def to_hash
          end
        end
      end
    end
  end
end
