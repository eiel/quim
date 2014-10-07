class Message < ActionMailer::Base
  default from: "ENV['FROM_USER_NAME'] <#{ENV['GMAIL_USER_NAME']}>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message.default.subject
  #
  def basic(customer,template)
    @body = Liquid::Template.parse(template.body)
      .render("person" => customer.attributes)
    mail to: customer.email, subject: template.title
  end
end
