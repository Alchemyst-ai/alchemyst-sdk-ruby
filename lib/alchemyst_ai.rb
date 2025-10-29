# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "alchemyst_ai/version"
require_relative "alchemyst_ai/internal/util"
require_relative "alchemyst_ai/internal/type/converter"
require_relative "alchemyst_ai/internal/type/unknown"
require_relative "alchemyst_ai/internal/type/boolean"
require_relative "alchemyst_ai/internal/type/file_input"
require_relative "alchemyst_ai/internal/type/enum"
require_relative "alchemyst_ai/internal/type/union"
require_relative "alchemyst_ai/internal/type/array_of"
require_relative "alchemyst_ai/internal/type/hash_of"
require_relative "alchemyst_ai/internal/type/base_model"
require_relative "alchemyst_ai/internal/type/base_page"
require_relative "alchemyst_ai/internal/type/request_parameters"
require_relative "alchemyst_ai/internal"
require_relative "alchemyst_ai/request_options"
require_relative "alchemyst_ai/file_part"
require_relative "alchemyst_ai/errors"
require_relative "alchemyst_ai/internal/transport/base_client"
require_relative "alchemyst_ai/internal/transport/pooled_net_requester"
require_relative "alchemyst_ai/client"
require_relative "alchemyst_ai/models/v1/context/memory_add_params"
require_relative "alchemyst_ai/models/v1/context/memory_delete_params"
require_relative "alchemyst_ai/models/v1/context/trace_delete_params"
require_relative "alchemyst_ai/models/v1/context/trace_delete_response"
require_relative "alchemyst_ai/models/v1/context/trace_list_params"
require_relative "alchemyst_ai/models/v1/context/trace_list_response"
require_relative "alchemyst_ai/models/v1/context/view_docs_params"
require_relative "alchemyst_ai/models/v1/context/view_docs_response"
require_relative "alchemyst_ai/models/v1/context/view_retrieve_params"
require_relative "alchemyst_ai/models/v1/context/view_retrieve_response"
require_relative "alchemyst_ai/models/v1/context_add_params"
require_relative "alchemyst_ai/models/v1/context_add_response"
require_relative "alchemyst_ai/models/v1/context_delete_params"
require_relative "alchemyst_ai/models/v1/context_delete_response"
require_relative "alchemyst_ai/models/v1/context_search_params"
require_relative "alchemyst_ai/models/v1/context_search_response"
require_relative "alchemyst_ai/models/v1/org/context_view_params"
require_relative "alchemyst_ai/models/v1/org/context_view_response"
require_relative "alchemyst_ai/models"
require_relative "alchemyst_ai/resources/v1"
require_relative "alchemyst_ai/resources/v1/context"
require_relative "alchemyst_ai/resources/v1/context/memory"
require_relative "alchemyst_ai/resources/v1/context/traces"
require_relative "alchemyst_ai/resources/v1/context/view"
require_relative "alchemyst_ai/resources/v1/org"
require_relative "alchemyst_ai/resources/v1/org/context"
