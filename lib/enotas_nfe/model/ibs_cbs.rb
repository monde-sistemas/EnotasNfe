module EnotasNfe
  module Model
    class IbsCbs

      require "enotas_nfe/model/operacao_governamental"
      require "enotas_nfe/model/reembolso_repasse_ressarcimento"

      include Virtus.model

      attribute :situacaoTributaria, String
      attribute :classificacaoTributaria, String
      attribute :codigoIndicadorOperacao, String
      attribute :operacaoGovernamental, OperacaoGovernamental
      attribute :reembolsoRepasseRessarcimento, Array[ReembolsoRepasseRessarcimento]

      # O Virtus começa a coleção vazia, e a lista vazia iria no JSON de toda nota com IBS/CBS. Sem
      # repasse, o grupo fica de fora, como antes de ele existir.
      def attributes
        super.tap do |values|
          transfers = values[:reembolsoRepasseRessarcimento]
          values.delete(:reembolsoRepasseRessarcimento) if transfers.nil? || transfers.empty?
        end
      end
    end
  end
end
