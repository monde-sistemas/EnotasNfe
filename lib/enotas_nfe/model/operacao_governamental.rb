module EnotasNfe
  module Model
    class OperacaoGovernamental
      include Virtus.model

      attribute :tipoOperacao, String
      attribute :tipoEnteGovernamental, String
    end
  end
end
