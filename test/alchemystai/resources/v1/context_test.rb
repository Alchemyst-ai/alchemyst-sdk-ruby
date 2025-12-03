# frozen_string_literal: true

require_relative "../../test_helper"

class Alchemystai::Test::Resources::V1::ContextTest < Alchemystai::Test::ResourceTest
  def test_delete
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.delete

    assert_pattern do
      response => Alchemystai::Internal::Type::Unknown
    end
  end

  def test_add
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.add

    assert_pattern do
      response => Alchemystai::Internal::Type::Unknown
    end
  end

  def test_search_required_params
    skip("Prism tests are disabled")

    response =
      @alchemyst_ai.v1.context.search(
        minimum_similarity_threshold: 0.5,
        query: "What did the customer ask about pricing for the Scale plan?",
        similarity_threshold: 0.8
      )

    assert_pattern do
      response => Alchemystai::Models::V1::ContextSearchResponse
    end

    assert_pattern do
      response => {
        contexts: ^(Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::ContextSearchResponse::Context]) | nil
      }
    end
  end
end
