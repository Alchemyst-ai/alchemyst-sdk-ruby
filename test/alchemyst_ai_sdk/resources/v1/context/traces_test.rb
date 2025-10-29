# frozen_string_literal: true

require_relative "../../../test_helper"

class AlchemystAISDK::Test::Resources::V1::Context::TracesTest < AlchemystAISDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.traces.list

    assert_pattern do
      response => AlchemystAISDK::Models::V1::Context::TraceListResponse
    end

    assert_pattern do
      response => {
        traces: ^(AlchemystAISDK::Internal::Type::ArrayOf[AlchemystAISDK::Models::V1::Context::TraceListResponse::Trace]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.traces.delete("traceId")

    assert_pattern do
      response => AlchemystAISDK::Models::V1::Context::TraceDeleteResponse
    end

    assert_pattern do
      response => {
        trace: AlchemystAISDK::Internal::Type::Unknown | nil
      }
    end
  end
end
