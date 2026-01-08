# frozen_string_literal: true

require_relative "../../../test_helper"

class Alchemystai::Test::Resources::V1::Context::AddAsyncTest < Alchemystai::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @alchemyst_ai.v1.context.add_async.create(
        context_type: :resource,
        documents: [{}],
        scope: :internal,
        source: "support-inbox"
      )

    assert_pattern do
      response => Alchemystai::Models::V1::Context::AddAsyncCreateResponse
    end

    assert_pattern do
      response => {
        job_id: String,
        queued: Alchemystai::Internal::Type::Boolean
      }
    end
  end

  def test_cancel
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.add_async.cancel("id")

    assert_pattern do
      response => Alchemystai::Models::V1::Context::AddAsyncCancelResponse
    end

    assert_pattern do
      response => {
        job_id: String,
        message: String,
        status: String,
        success: Alchemystai::Internal::Type::Boolean
      }
    end
  end
end
