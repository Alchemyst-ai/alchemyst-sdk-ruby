# frozen_string_literal: true

require_relative "../../test_helper"

class Alchemystai::Test::Resources::V1::ContextTest < Alchemystai::Test::ResourceTest
  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.delete(organization_id: "org_01HXYZABC", source: "support-inbox")

    assert_pattern do
      response => Alchemystai::Internal::Type::Unknown
    end
  end

  def test_add_required_params
    skip("Prism tests are disabled")

    response =
      @alchemyst_ai.v1.context.add(
        context_type: :resource,
        documents: [{}],
        scope: :internal,
        source: "support-inbox"
      )

    assert_pattern do
      response => Alchemystai::Models::V1::ContextAddResponse
    end

    assert_pattern do
      response => {
        context_id: String,
        success: Alchemystai::Internal::Type::Boolean,
        processed_documents: Float | nil
      }
    end
  end
end
