class ContinuMailer < ApplicationMailer
  def thank_you(user)
    time = Time.zone.now
    if time.month < 12
      @nexty_month = time.month + 1
    else
      @next_month = 1
    end
    @user = user
    mail to: user.email,
    subject: "利用料金のお振り込みありがとうございました。"
  end
end
