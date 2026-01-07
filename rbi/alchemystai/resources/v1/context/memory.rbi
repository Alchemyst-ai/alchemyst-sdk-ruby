# typed: strong

module Alchemystai
  module Resources
    class V1
      class Context
        class Memory
          # This endpoint updates memory context data.
          sig do
            params(
              contents:
                T::Array[
                  Alchemystai::V1::Context::MemoryUpdateParams::Content::OrHash
                ],
              memory_id: String,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Context::MemoryUpdateResponse)
          end
          def update(
            # Array of updated content objects
            contents:,
            # The ID of the memory to update
            memory_id:,
            request_options: {}
          )
          end

          # Deletes memory context data based on provided parameters.
          sig do
            params(
              memory_id: String,
              organization_id: T.nilable(String),
              by_doc: T.nilable(T::Boolean),
              by_id: T.nilable(T::Boolean),
              user_id: T.nilable(String),
              request_options: Alchemystai::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID of the memory to delete
            memory_id:,
            # Organization ID
            organization_id:,
            # Delete by document flag
            by_doc: nil,
            # Delete by ID flag
            by_id: nil,
            # Optional user ID
            user_id: nil,
            request_options: {}
          )
          end

          # This endpoint adds memory (chat history) as context.
          sig do
            params(
              contents:
                T::Array[
                  Alchemystai::V1::Context::MemoryAddParams::Content::OrHash
                ],
              memory_id: String,
              metadata:
                Alchemystai::V1::Context::MemoryAddParams::Metadata::OrHash,
              request_options: Alchemystai::RequestOptions::OrHash
            ).returns(Alchemystai::Models::V1::Context::MemoryAddResponse)
          end
          def add(
            # Array of content objects. Each object must contain at least the 'content' field.
            # Additional properties are allowed.
            contents:,
            # The ID of the memory
            memory_id:,
            # Optional metadata for the memory context. Defaults to ["default"]
            metadata: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Alchemystai::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
