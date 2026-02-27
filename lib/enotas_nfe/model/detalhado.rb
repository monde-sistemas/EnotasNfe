module EnotasNfe
  module Model
    class Detalhado

      include Virtus.model

      attribute :percentualFederal, Float
      attribute :percentualEstadual, Float
      attribute :percentualMunicipal, Float

    end
  end
end
