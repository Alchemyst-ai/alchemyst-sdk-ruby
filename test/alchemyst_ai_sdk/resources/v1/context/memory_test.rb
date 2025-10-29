# frozen_string_literal: true

require_relative "../../../test_helper"

class AlchemystAISDK::Test::Resources::V1::Context::MemoryTest < AlchemystAISDK::Test::ResourceTest
  def test_delete
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.memory.delete

    assert_pattern do
      response => nil
    end
  end

  def test_add
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.memory.add

    assert_pattern do
      response => nil
    end
  end
end
