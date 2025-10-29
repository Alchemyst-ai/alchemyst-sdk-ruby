# frozen_string_literal: true

require_relative "../../../test_helper"

class AlchemystAI::Test::Resources::V1::Org::ContextTest < AlchemystAI::Test::ResourceTest
  def test_view_required_params
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.org.context.view(user_ids: ["string"])

    assert_pattern do
      response => AlchemystAI::Models::V1::Org::ContextViewResponse
    end

    assert_pattern do
      response => {
        contexts: AlchemystAI::Internal::Type::Unknown | nil
      }
    end
  end
end
