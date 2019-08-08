class ContinuMailer < ApplicationMailer
  def thank_you(user)
    time = Time.zone.now
    @time_month = time.month
    if @time_month < 12
      @next_month = @time_month + 1
    else
      @next_month = 1
    end
    @user = user
    mail to: user.email,
    subject: "利用料金のお振り込みありがとうございました。"
  end
  
  def reregistration(user)
    time = Time.zone.now
    @time_month = time.month
    if @time_month < 12
      @next_month = @time_month + 1
    else
      @next_month = 1
    end
    @user = user
    mail to: user.email,
    subject: "利用料金のお振り込みありがとうございました。"
  end
  
  def registration(user)
    time = Time.zone.now
    @time_month = time.month
    if @time_month < 12
      @next_month = @time_month + 1
    else
      @next_month = 1
    end
    @user = user
    mail to: user.email,
    subject: "利用料金のお振り込みありがとうございました。"
  end
end
