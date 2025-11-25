module EnotasNfe
  class Client
    include Connection
    include Request
    include Facades
    include Endpoints

    PRODUCTION_NFSE_ENDPOINT = "https://api.enotasgw.com.br/v1"
    PRODUCTION_NFE_ENDPOINT = "https://api.enotasgw.com.br/v2"

    attr_accessor :auth_token, :endpoint

    def initialize(auth_token, endpoint)
      @auth_token = auth_token
      @endpoint = determine_endpoint(endpoint)
    end

    private

    def determine_endpoint(endpoint_type)
      endpoint_type == 'nfe' ? PRODUCTION_NFE_ENDPOINT : PRODUCTION_NFSE_ENDPOINT
    end
  end
end
