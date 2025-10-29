# typed: strong

module AlchemystAI
  module Models
    module V1
      module Context
        ViewDocsResponse =
          T.let(T.anything, AlchemystAI::Internal::Type::Converter)
      end
    end
  end
end
