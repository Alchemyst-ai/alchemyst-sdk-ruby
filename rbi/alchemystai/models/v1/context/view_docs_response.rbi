# typed: strong

module Alchemystai
  module Models
    module V1
      module Context
        ViewDocsResponse =
          T.let(T.anything, Alchemystai::Internal::Type::Converter)
      end
    end
  end
end
