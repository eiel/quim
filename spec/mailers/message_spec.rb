require "rails_helper"

RSpec.describe Message, :type => :mailer do
  describe "default" do
    let(:mail) { Message.default }

    it "renders the headers" do
      expect(mail.subject).to eq("Default")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
