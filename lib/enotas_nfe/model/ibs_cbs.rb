module EnotasNfe
  module Model
    class IbsCbs

      require "enotas_nfe/model/operacao_governamental"

      include Virtus.model

      attribute :situacaoTributaria, String
      attribute :classificacaoTributaria, String
      attribute :codigoIndicadorOperacao, String
      attribute :operacaoGovernamental, OperacaoGovernamental
    end
  end
end
