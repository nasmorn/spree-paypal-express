require File.dirname(__FILE__) + '/paypal_express'

module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    class PaypalExpressAtGateway < PaypalExpressGateway
      self.default_currency = 'EUR'
      
      self.supported_countries = ['AT']
      self.homepage_url = 'https://www.paypal.com/at/cgi-bin/webscr?cmd=_additional-payment-overview-outside'
      self.display_name = 'PayPal Express Checkout (AT)'
    end
  end
end

