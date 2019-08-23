class Client::UsersController < Client::Base
  skip_before_action :authorize
  
  def new
    @account = Client.new
  end
  
  def edit
    @client = Client.find_by(id: current_client.id)
    render action: 'edit'
  end
  
  def update
    @client = current_client
    @client.assign_attributes(client_params)
    if @client.save
      flash.notice = '待ち時間を更新しました。'
      @client.update_no = 1
      if @client.operation_status == "即対応可"
        @client.status_no = 1
      elsif @client.operation_status == "30分以内"
        @client.status_no = 2
      elsif @client.operation_status == "約45分"
        @client.status_no = 3
      elsif @client.operation_status == "約1時間"
        @client.status_no = 4
      elsif @client.operation_status == "約1時間半"
        @client.status_no = 5
      elsif @client.operation_status == "約2時間"
        @client.status_no = 6
      elsif @client.operation_status == "約2時間半"
        @client.status_no = 7
      elsif @client.operation_status == "3時間以上"
        @client.status_no = 8
      elsif @client.operation_status == "電話で確認"
        @client.status_no = 9
      elsif @client.operation_status == "予約のみ"
        @client.status_no = 10
      elsif @client.operation_status == "本日終了"
        @client.status_no = 11
      else
        @client.status_no = 12
      end  
      @client.save
      redirect_to :client_root
    else
      render action: 'edit'
    end
  end
  
  def create
    time = Time.zone.now
    month = time.month
    if month < 12
      next_month = month + 1
    else
      next_month = 1
    end
    @account = Client.new(client_params)
    @account["agreement#{month}"] = "有効"
    @account["agreement#{next_month}"] = "有効"
    @account.start_date = Date.today
    prefecture_code
    @account.build_entries unless @account.entries
    abc = Client.find_by(prefecture: @account.prefecture, city: @account.city, company_name: @account.company_name)
    xyz = Client.find_by(phone1: @account.phone1, phone2: @account.phone2, phone3: @account.phone3)
    if abc.present?
      flash.alert = 'すでに登録されています。'
      render action: 'register'
    elsif xyz.present?
      flash.alert = 'すでに登録されています。'
      render action: 'register'
    else
      if @account.save!
        flash.notice = '代行業者アカウントを新規登録しました。'
        redirect_to :client_root
        
        user = @account
        ThanksMailer.thank_you(user).deliver_now
        
        @account.prefecture_cord = (@code.to_s + @account.id.to_s).to_i
        @account.save
      else
        redirect_to :client_root
      end
    end
  end
  
  def prefecture_code
    if @account.prefecture == '北海道'
      @code = 10
    elsif @account.prefecture == '青森県'
      @code = 11
    elsif @account.prefecture == '岩手県'
      @code = 12
    elsif @account.prefecture == '宮城県'
      @code = 13
    elsif @account.prefecture == '秋田県'
      @code = 14
    elsif @account.prefecture == '山県県'
      @code = 15
    elsif @account.prefecture == '福島県'
      @code = 16
    elsif @account.prefecture == '茨城県'
      @code = 17
    elsif @account.prefecture == '栃木県'
      @code = 18
    elsif @account.prefecture == '群馬県'
      @code = 19
    elsif @account.prefecture == '埼玉県'
      @code = 20
    elsif @account.prefecture == '千葉県'
      @code = 21
    elsif @account.prefecture == '東京都'
      @code = 22
    elsif @account.prefecture == '神奈川県'
      @code = 23
    elsif @account.prefecture == '新潟県'
      @code = 24
    elsif @account.prefecture == '富山県'
      @code = 25
    elsif @account.prefecture == '石川県'
      @code = 26
    elsif @account.prefecture == '福井県'
      @code = 27
    elsif @account.prefecture == '山梨県'
      @code = 28
    elsif @account.prefecture == '長野県'
      @code = 29
    elsif @account.prefecture == '岐阜県'
      @code = 30
    elsif @account.prefecture == '静岡県'
      @code = 31
    elsif @account.prefecture == '愛知県'
      @code = 32
    elsif @account.prefecture == '三重県'
      @code = 33
    elsif @account.prefecture == '滋賀県'
      @code = 34
    elsif @account.prefecture == '京都府'
      @code = 35
    elsif @account.prefecture == '大阪府'
      @code = 36
    elsif @account.prefecture == '兵庫県'
      @code = 37
    elsif @account.prefecture == '奈良県'
      @code = 38
    elsif @account.prefecture == '和歌山県'
      @code = 39
    elsif @account.prefecture == '鳥取県'
      @code = 40
    elsif @account.prefecture == '島根県'
      @code = 41
    elsif @account.prefecture == '岡山県'
      @code = 42
    elsif @account.prefecture == '広島県'
      @code = 43
    elsif @account.prefecture == '山口県'
      @code = 44
    elsif @account.prefecture == '徳島県'
      @code = 45
    elsif @account.prefecture == '香川県'
      @code = 46
    elsif @account.prefecture == '愛媛県'
      @code = 47
    elsif @account.prefecture == '高知県'
      @code = 48
    elsif @account.prefecture == '福岡県'
      @code = 49
    elsif @account.prefecture == '佐賀県'
      @code = 50
    elsif @account.prefecture == '長崎県'
      @code = 51
    elsif @account.prefecture == '熊本県'
      @code = 52
    elsif @account.prefecture == '大分県'
      @code = 53
    elsif @account.prefecture == '宮崎県'
      @code = 54
    elsif @account.prefecture == '鹿児島県'
      @code = 55
    else
      @account.prefecture == '沖縄県'
        @code = 56
    end
  end
  
  def terms  #規約
   render action: 'terms'
  end
  
  def merit #メリット
    render action: 'merit'
  end
  
  def personal_info  #個人情報
    render action: 'personal_info'
  end
  
  def commercial  #特定商取引法
    render action: 'commercial'
  end
  
  def forget #パスワードを忘れた場合
    render action: 'forget'
  end
  def contact #利用案内未送付業社
    render action: 'contact'
  end
  
  def resume #利用継続・再開について
    render action: 'resume'
  end
  
  private
  def client_params
    params.require(:client).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :agreement, :suspended, :sales, :operation_status, :update_no, :status_no, :contract_renewal)
  end
end
