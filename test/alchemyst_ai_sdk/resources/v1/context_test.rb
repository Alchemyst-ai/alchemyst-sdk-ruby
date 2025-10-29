# frozen_string_literal: true

require_relative "../../test_helper"

class AlchemystAISDK::Test::Resources::V1::ContextTest < AlchemystAISDK::Test::ResourceTest
  def test_delete
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.delete

    assert_pattern do
      response => AlchemystAISDK::Internal::Type::Unknown
    end
  end

  def test_add
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.add

    assert_pattern do
      response => AlchemystAISDK::Internal::Type::Unknown
    end
  end

  def test_search_required_params
    skip("Prism tests are disabled")

    response =
      @alchemyst_ai.v1.context.search(
        minimum_similarity_threshold: 0.5,
        query: "search query for user preferences",
        similarity_threshold: 0.8
      )

    assert_pattern do
      response => AlchemystAISDK::Models::V1::ContextSearchResponse
    end

    assert_pattern do
      response => {
        contexts: ^(AlchemystAISDK::Internal::Type::ArrayOf[AlchemystAISDK::Models::V1::ContextSearchResponse::Context]) | nil
      }
    end
  end
end
