module EnotasNfe
  class Client
    include Connection
    include Request
    include Facades
    include Endpoints

    PRODUCTION_NFSE_ENDPOINT = "https://api.enotasgw.com.br/v1"
    PRODUCTION_NFE_ENDPOINT = "https://api.enotasgw.com.br/v2"
    SANDBOX_ENDPOINT = "https://sandbox.notagateway.com.br/v1"

    attr_accessor :auth_token, :endpoint

    def initialize(auth_token, endpoint)
      @auth_token = auth_token
      @endpoint = determine_endpoint(endpoint)
    end

    private

    def determine_endpoint(endpoint_type)
      return SANDBOX_ENDPOINT if test_environment?

      endpoint_type == 'nfe' ? PRODUCTION_NFE_ENDPOINT : PRODUCTION_NFSE_ENDPOINT
    end

    def test_environment?
      defined?(Rails) && (Rails.env.test? || Rails.env.development?)
    end
  end
end
