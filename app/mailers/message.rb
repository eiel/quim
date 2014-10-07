class Message < ActionMailer::Base
  default from: ENV["GMAIL_USER_NAME"]

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message.default.subject
  #
  def basic(customer,body)
    @body = Liquid::Template.parse(body).render("person" => customer.attributes)
    mail to: customer.email
  end
end
