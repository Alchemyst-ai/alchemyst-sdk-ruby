# typed: strong

module Alchemystai
  module Models
    module V1
      ContextAddResponse =
        T.let(T.anything, Alchemystai::Internal::Type::Converter)
    end
  end
end
