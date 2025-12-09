module EnotasNfe
  module Model
    class IbsCbs
      include Virtus.model

      attribute :situacaoTributaria, String
      attribute :classificacaoTributaria, String
      attribute :codigoIndicadorOperacao, String
    end
  end
end
