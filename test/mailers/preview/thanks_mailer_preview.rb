class ThanksMailerPreview < ActionMailer::Preview
  def thank_you
    user = Client.find(10)
    ThanksMailer.thank_you(user)
  end
end
    