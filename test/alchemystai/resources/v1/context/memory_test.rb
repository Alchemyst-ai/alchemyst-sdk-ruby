# frozen_string_literal: true

require_relative "../../../test_helper"

class Alchemystai::Test::Resources::V1::Context::MemoryTest < Alchemystai::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @alchemyst_ai.v1.context.memory.update(contents: [{}, {}], memory_id: "support-thread-TCK-1234")

    assert_pattern do
      response => Alchemystai::Models::V1::Context::MemoryUpdateResponse
    end

    assert_pattern do
      response => {
        memory_id: String,
        success: Alchemystai::Internal::Type::Boolean,
        updated_entries: Float
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @alchemyst_ai.v1.context.memory.delete(
        memory_id: "support-thread-TCK-1234",
        organization_id: "org_01HXYZABC"
      )

    assert_pattern do
      response => nil
    end
  end
end
