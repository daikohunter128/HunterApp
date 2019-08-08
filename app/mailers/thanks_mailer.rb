class ThanksMailer < ApplicationMailer
  default from: '<wonder.gate128@gmail.com>'
  def thank_you(user)
    @user = user
    prefecture_code
    mail to: user.email,
    subject: "新規ユーザー登録ありがとうございました。"
  end
  
  def prefecture_code
    if @user.prefecture == '北海道'
      @code = 10
    elsif @user.prefecture == '青森県'
      @code = 11
    elsif @user.prefecture == '岩手県'
      @code = 12
    elsif @user.prefecture == '宮城県'
      @code = 13
    elsif @user.prefecture == '秋田県'
      @code = 14
    elsif @user.prefecture == '山県県'
      @code = 15
    elsif @user.prefecture == '福島県'
      @code = 16
    elsif @user.prefecture == '茨城県'
      @code = 17
    elsif @user.prefecture == '栃木県'
      @code = 18
    elsif @user.prefecture == '群馬県'
      @code = 19
    elsif @user.prefecture == '埼玉県'
      @code = 20
    elsif @user.prefecture == '千葉県'
      @code = 21
    elsif @user.prefecture == '東京都'
      @code = 22
    elsif @user.prefecture == '神奈川県'
      @code = 23
    elsif @user.prefecture == '新潟県'
      @code = 24
    elsif @user.prefecture == '富山県'
      @code = 25
    elsif @user.prefecture == '石川県'
      @code = 26
    elsif @user.prefecture == '福井県'
      @code = 27
    elsif @user.prefecture == '山梨県'
      @code = 28
    elsif @user.prefecture == '長野県'
      @code = 29
    elsif @user.prefecture == '岐阜県'
      @code = 30
    elsif @user.prefecture == '静岡県'
      @code = 31
    elsif @user.prefecture == '愛知県'
      @code = 32
    elsif @user.prefecture == '三重県'
      @code = 33
    elsif @user.prefecture == '滋賀県'
      @code = 34
    elsif @user.prefecture == '京都府'
      @code = 35
    elsif @user.prefecture == '大阪府'
      @code = 36
    elsif @user.prefecture == '兵庫県'
      @code = 37
    elsif @user.prefecture == '奈良県'
      @code = 38
    elsif @user.prefecture == '和歌山県'
      @code = 39
    elsif @user.prefecture == '鳥取県'
      @code = 40
    elsif @user.prefecture == '島根県'
      @code = 41
    elsif @user.prefecture == '岡山県'
      @code = 42
    elsif @user.prefecture == '広島県'
      @code = 43
    elsif @user.prefecture == '山口県'
      @code = 44
    elsif @user.prefecture == '徳島県'
      @code = 45
    elsif @user.prefecture == '香川県'
      @code = 46
    elsif @user.prefecture == '愛媛県'
      @code = 47
    elsif @user.prefecture == '高知県'
      @code = 48
    elsif @user.prefecture == '福岡県'
      @code = 49
    elsif @user.prefecture == '佐賀県'
      @code = 50
    elsif @user.prefecture == '長崎県'
      @code = 51
    elsif @user.prefecture == '熊本県'
      @code = 52
    elsif @user.prefecture == '大分県'
      @code = 53
    elsif @user.prefecture == '宮崎県'
      @code = 54
    elsif @user.prefecture == '鹿児島県'
      @code = 55
    else
      @user.prefecture == '沖縄県'
        @code = 56
    end
  end
end