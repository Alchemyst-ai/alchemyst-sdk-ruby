# typed: strong

module AlchemystAISDK
  module Resources
    class V1
      class Context
        class Memory
          # Deletes memory context data based on provided parameters
          sig do
            params(
              memory_id: String,
              organization_id: T.nilable(String),
              user_id: T.nilable(String),
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID of the memory to delete
            memory_id: nil,
            # Optional organization ID
            organization_id: nil,
            # Optional user ID
            user_id: nil,
            request_options: {}
          )
          end

          # This endpoint adds memory context data, fetching chat history if needed.
          sig do
            params(
              contents:
                T::Array[
                  AlchemystAISDK::V1::Context::MemoryAddParams::Content::OrHash
                ],
              memory_id: String,
              request_options: AlchemystAISDK::RequestOptions::OrHash
            ).void
          end
          def add(
            # Array of content objects with additional properties allowed
            contents: nil,
            # The ID of the memory
            memory_id: nil,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: AlchemystAISDK::Client).returns(T.attached_class)
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
