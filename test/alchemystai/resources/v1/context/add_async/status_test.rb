# frozen_string_literal: true

require_relative "../../../../test_helper"

class Alchemystai::Test::Resources::V1::Context::AddAsync::StatusTest < Alchemystai::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.add_async.status.retrieve("id")

    assert_pattern do
      response => Alchemystai::Models::V1::Context::AddAsync::StatusRetrieveResponse
    end

    assert_pattern do
      response => {
        job_id: String,
        status: String,
        success: Alchemystai::Internal::Type::Boolean,
        attempts_made: Float | nil,
        failed_reason: String | nil,
        finished_on: Float | nil,
        processed_on: Float | nil,
        result: Alchemystai::Internal::Type::Unknown | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @alchemyst_ai.v1.context.add_async.status.list

    assert_pattern do
      response => Alchemystai::Models::V1::Context::AddAsync::StatusListResponse
    end

    assert_pattern do
      response => {
        jobs: ^(Alchemystai::Internal::Type::ArrayOf[Alchemystai::Models::V1::Context::AddAsync::StatusListResponse::Job]),
        success: Alchemystai::Internal::Type::Boolean
      }
    end
  end
end
