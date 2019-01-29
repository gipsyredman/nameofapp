if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_kHkocPGDNnASr6Ole8v9W81B',
    secret_key: 'sk_test_zPhM6evglYwIDj4KtZrN6Cdu'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
