module Ebay
  class Base
     @client = HTTPClient.new
     SANDBOX = 'https://api.sandbox.ebay.com/ws/api.dll'
     # @url = 'https://api.ebay.com/ws/api.dll'

    def get_data
      response = @client.post(SANDBOX,)
      @data = JSON.parse(response.body).with_indifferent_access
      @data['image_url'] = @data['picture']['data']['url'] if @data['picture'].present?
      @uid = @data[:id] ||= @data[:sub]
      @data
    end


    def set_http_header seeting,method
      response = @client.post(SANDBOX,array(
      'verify' => false,
      'headers' => array(
          'X-EBAY-API-COMPATIBILITY-LEVEL' => 963,
          'X-EBAY-API-DEV-NAME' => seeting.dev_id,
          'X-EBAY-API-APP-NAME' => seeting.app_id,
          'X-EBAY-API-CERT-NAME' => seeting.cert_id,        
          'X-EBAY-API-SITEID' => 0,
          'X-EBAY-API-CALL-NAME' => method     
      ))
    end


  end

end