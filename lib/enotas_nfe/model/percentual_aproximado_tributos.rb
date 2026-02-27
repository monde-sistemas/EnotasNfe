module EnotasNfe
  module Model
    class PercentualAproximadoTributos

      include Virtus.model
      require "enotas_nfe/model/detalhado"

      attribute :detalhado, Detalhado

    end
  end
end
