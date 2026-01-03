# frozen_string_literal: true

require_relative "../../../test_helper"

class Alchemystai::Test::Resources::V1::Context::ViewTest < Alchemystai::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.view.retrieve

    assert_pattern do
      response => Alchemystai::Models::V1::Context::ViewRetrieveResponse
    end

    assert_pattern do
      response => {
        contexts: ^(Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::Context::ViewRetrieveResponse::Context]),
        success: Alchemystai::Internal::Type::Boolean
      }
    end
  end

  def test_docs
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.view.docs

    assert_pattern do
      response => Alchemystai::Models::V1::Context::ViewDocsResponse
    end

    assert_pattern do
      response => {
        documents: ^(Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::Context::ViewDocsResponse::Document])
      }
    end
  end
end
