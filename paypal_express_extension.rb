# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PaypalExpressExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/paypal_express"

  def activate
    BillingIntegration::PaypalExpress.register
    BillingIntegration::PaypalExpressUk.register
    BillingIntegration::PaypalExpressAt.register

    # Load up over-rides for ActiveMerchant files
    # these will be submitted to ActiveMerchant some time...
    require File.join(PaypalExpressExtension.root, "lib", "active_merchant", "billing", "gateways", "paypal", "paypal_common_api.rb")
    require File.join(PaypalExpressExtension.root, "lib", "active_merchant", "billing", "gateways", "paypal_express_uk.rb")
    require File.join(PaypalExpressExtension.root, "lib", "active_merchant", "billing", "gateways", "paypal_express_at.rb")

    # inject paypal code into orders controller
    CheckoutsController.class_eval do
      include Spree::PaypalExpress
    end
    
  end
end
