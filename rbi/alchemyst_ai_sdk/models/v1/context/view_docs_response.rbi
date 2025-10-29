# typed: strong

module AlchemystAISDK
  module Models
    module V1
      module Context
        ViewDocsResponse =
          T.let(T.anything, AlchemystAISDK::Internal::Type::Converter)
      end
    end
  end
end
