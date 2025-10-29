# frozen_string_literal: true

require_relative "../../../test_helper"

class AlchemystAI::Test::Resources::V1::Context::ViewTest < AlchemystAI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.view.retrieve

    assert_pattern do
      response => AlchemystAI::Models::V1::Context::ViewRetrieveResponse
    end

    assert_pattern do
      response => {
        context: ^(AlchemystAI::Internal::Type::ArrayOf[AlchemystAI::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_docs
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.view.docs

    assert_pattern do
      response => AlchemystAI::Internal::Type::Unknown
    end
  end
end
