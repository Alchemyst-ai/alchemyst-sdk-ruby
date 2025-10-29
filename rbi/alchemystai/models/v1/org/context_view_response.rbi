# typed: strong

module Alchemystai
  module Models
    module V1
      module Org
        class ContextViewResponse < Alchemystai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Alchemystai::Models::V1::Org::ContextViewResponse,
                Alchemystai::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T.anything)) }
          attr_reader :contexts

          sig { params(contexts: T.anything).void }
          attr_writer :contexts

          sig { params(contexts: T.anything).returns(T.attached_class) }
          def self.new(contexts: nil)
          end

          sig { override.returns({ contexts: T.anything }) }
          def to_hash
          end
        end
      end
    end
  end
end
