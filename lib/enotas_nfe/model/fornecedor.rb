module EnotasNfe
  module Model
    class Fornecedor
      include Virtus.model

      attribute :tipoPessoa, String
      attribute :nome, String
      attribute :cpfCnpj, String
    end
  end
end
