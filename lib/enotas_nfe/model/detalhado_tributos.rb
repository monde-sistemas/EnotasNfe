module EnotasNfe
  module Model
    class DetalhadoTributos

      include Virtus.model

      attribute :percentualFederal, Float
      attribute :percentualEstadual, Float
      attribute :percentualMunicipal, Float

    end
  end
end
