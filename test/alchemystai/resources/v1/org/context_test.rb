# frozen_string_literal: true

require_relative "../../../test_helper"

class Alchemystai::Test::Resources::V1::Org::ContextTest < Alchemystai::Test::ResourceTest
  def test_view_required_params
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.org.context.view(user_ids: %w[user_123 user_456])

    assert_pattern do
      response => Alchemystai::Models::V1::Org::ContextViewResponse
    end

    assert_pattern do
      response => {
        contexts: Alchemystai::Internal::Type::Unknown | nil
      }
    end
  end
end
