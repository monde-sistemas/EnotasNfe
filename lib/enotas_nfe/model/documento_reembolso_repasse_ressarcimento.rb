module EnotasNfe
  module Model
    class DocumentoReembolsoRepasseRessarcimento

      require "enotas_nfe/model/doc_nao_fiscal_outro"
      require "enotas_nfe/model/fornecedor"

      include Virtus.model

      attribute :docNaoFiscalOutro, DocNaoFiscalOutro
      attribute :fornecedor, Fornecedor
      attribute :dataEmissao, String
      attribute :dataCompetencia, String
    end
  end
end
