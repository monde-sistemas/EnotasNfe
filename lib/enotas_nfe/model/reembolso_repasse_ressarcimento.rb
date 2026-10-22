module EnotasNfe
  module Model
    class ReembolsoRepasseRessarcimento

      require "enotas_nfe/model/documento_reembolso_repasse_ressarcimento"

      include Virtus.model

      attribute :tipo, String
      attribute :descricao, String
      attribute :documento, DocumentoReembolsoRepasseRessarcimento
      attribute :valor, Float
    end
  end
end
