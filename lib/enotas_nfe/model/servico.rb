module EnotasNfe
  module Model
    class Servico

      require "enotas_nfe/model/ibs_cbs"
      require "enotas_nfe/model/pis_cofins_apuracao_propria"

      include Virtus.model

      attribute :descricao, String
      attribute :aliquotaIss, Float
      attribute :issRetidoFonte, Boolean
      attribute :cnae, String
      attribute :codigoNBS, String
      attribute :codigoServicoMunicipio, String
      attribute :descricaoServicoMunicipio, String
      attribute :itemListaServicoLC116, String
      attribute :ufPrestacaoServico, String
      attribute :municipioPrestacaoServico, String
      attribute :valorCofins, Float
      attribute :valorInss, Float
      attribute :valorIr, Float
      attribute :valorPis, Float
      attribute :valorCsll, Float
      attribute :tipoRetencaoPisCofins, String
      attribute :ibsCbs, IbsCbs
      attribute :pisCofinsApuracaoPropria, PisCofinsApuracaoPropria

    end
  end
end
