module EnotasNfe
  module Model
    class PisCofinsApuracaoPropria
      include Virtus.model

      attribute :baseCalculo, Float
      attribute :aliquotaPis, Float
      attribute :valorPis, Float
      attribute :aliquotaCofins, Float
      attribute :valorCofins, Float
    end
  end
end
