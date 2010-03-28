class BillingIntegration::PaypalExpressAt < BillingIntegration
  preference :login, :string
  preference :password, :password
  preference :signature, :string
  preference :review, :boolean, :default => false
  preference :no_shipping, :boolean, :default => false

  def provider_class
    ActiveMerchant::Billing::PaypalExpressAtGateway
  end
  
end
