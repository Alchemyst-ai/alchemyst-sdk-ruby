# typed: strong

module Alchemystai
  module Models
    module V1
      ContextDeleteResponse =
        T.let(T.anything, Alchemystai::Internal::Type::Converter)
    end
  end
end
