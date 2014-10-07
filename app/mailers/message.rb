class Message < ActionMailer::Base
  default from: ENV["GMAIL_USER_NAME"]

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message.default.subject
  #
  def basic(customer,body)
    @customer = customer
    @body = body

    mail to: customer.email
  end
end
