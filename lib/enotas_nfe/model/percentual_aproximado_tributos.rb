module EnotasNfe
  module Model
    class PercentualAproximadoTributos

      include Virtus.model
      require "enotas_nfe/model/detalhado"
      require "enotas_nfe/model/simples_nacional"

      attribute :detalhado, Detalhado
      attribute :simplesNacional, SimplesNacional

    end
  end
end
