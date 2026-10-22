module EnotasNfe
  module Model
    class DocNaoFiscalOutro
      include Virtus.model

      attribute :numero, String
      attribute :descricao, String
    end
  end
end
