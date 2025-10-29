# typed: strong

module AlchemystAI
  module Models
    module V1
      ContextAddResponse =
        T.let(T.anything, AlchemystAI::Internal::Type::Converter)
    end
  end
end
