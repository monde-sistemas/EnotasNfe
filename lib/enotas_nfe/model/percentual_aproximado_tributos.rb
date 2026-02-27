module EnotasNfe
  module Model
    class PercentualAproximadoTributos

      include Virtus.model
      require "enotas_nfe/model/detalhado_tributos"

      attribute :detalhado, DetalhadoTributos

    end
  end
end
