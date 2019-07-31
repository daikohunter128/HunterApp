class Admin::ClientsController < Admin::Base
  def index
    @clients = Client.order(:prefecture_cord)
      .page(params[:page])
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
  def new
    @client = Client.new
  end
  
  def edit
    @client = Client.find(params[:id])
    @prefecture = @client.prefecture
  end
  
  def create
    time = Time.zone.now
    month = time.month
    next_month = month + 1
    @client = Client.new(client_params)
    @client.build_entries unless @client.entries
    @client.start_date = Date.today
    @client["agreement#{month}"] = "有効"
    @client["agreement#{next_month}"] = "有効"
    prefecture_code
    abc = Client.find_by(prefecture: @client.prefecture, city: @client.city, company_name: @client.company_name)
    xyz = Client.find_by(phone1: @client.phone1, phone2: @client.phone2, phone3: @client.phone3)
    if abc.present?
      flash.alert = 'すでに登録されています。'
      redirect_to :admin_root
    elsif xyz.present?
      flash.alert = 'すでに登録されています。'
      redirect_to :admin_root
    else
      if @client.save
        flash.notice = '代行業者アカウントを新規登録しました。'
        redirect_to :admin_clients
        @client.prefecture_cord = (@code.to_s + @client.id.to_s).to_i
        @client.save
      else
        render action: 'new'
      end
    end
  end
  
  def update
    @client = Client.find(params[:id])
    @client.assign_attributes(client_params)
    if @client.save
      flash.notice = '代行業者アカウントを更新しました。'
      redirect_to :admin_clients
      change
    else
      render action: 'edit'
    end
  end
  
  def destroy
    client = Client.find(params[:id])
    client.destroy!
    flash.notice = '代行業者アカウントを削除しました。'
    redirect_to :admin_clients
  end
  
  def prefecture_code
    if @client.prefecture == '北海道'
      @code = 10
    elsif @client.prefecture == '青森県'
      @code = 11
    elsif @client.prefecture == '岩手県'
      @code = 12
    elsif @client.prefecture == '宮城県'
      @code = 13
    elsif @client.prefecture == '秋田県'
      @code = 14
    elsif @client.prefecture == '山県県'
      @code = 15
    elsif @client.prefecture == '福島県'
      @code = 16
    elsif @client.prefecture == '茨城県'
      @code = 17
    elsif @client.prefecture == '栃木県'
      @code = 18
    elsif @client.prefecture == '群馬県'
      @code = 19
    elsif @client.prefecture == '埼玉県'
      @code = 20
    elsif @client.prefecture == '千葉県'
      @code = 21
    elsif @client.prefecture == '東京都'
      @code = 22
    elsif @client.prefecture == '神奈川県'
      @code = 23
    elsif @client.prefecture == '新潟県'
      @code = 24
    elsif @client.prefecture == '富山県'
      @code = 25
    elsif @client.prefecture == '石川県'
      @code = 26
    elsif @client.prefecture == '福井県'
      @code = 27
    elsif @client.prefecture == '山梨県'
      @code = 28
    elsif @client.prefecture == '長野県'
      @code = 29
    elsif @client.prefecture == '岐阜県'
      @code = 30
    elsif @client.prefecture == '静岡県'
      @code = 31
    elsif @client.prefecture == '愛知県'
      @code = 32
    elsif @client.prefecture == '三重県'
      @code = 33
    elsif @client.prefecture == '滋賀県'
      @code = 34
    elsif @client.prefecture == '京都府'
      @code = 35
    elsif @client.prefecture == '大阪府'
      @code = 36
    elsif @client.prefecture == '兵庫県'
      @code = 37
    elsif @client.prefecture == '奈良県'
      @code = 38
    elsif @client.prefecture == '和歌山県'
      @code = 39
    elsif @client.prefecture == '鳥取県'
      @code = 40
    elsif @client.prefecture == '島根県'
      @code = 41
    elsif @client.prefecture == '岡山県'
      @code = 42
    elsif @client.prefecture == '広島県'
      @code = 43
    elsif @client.prefecture == '山口県'
      @code = 44
    elsif @client.prefecture == '徳島県'
      @code = 45
    elsif @client.prefecture == '香川県'
      @code = 46
    elsif @client.prefecture == '愛媛県'
      @code = 47
    elsif @client.prefecture == '高知県'
      @code = 48
    elsif @client.prefecture == '福岡県'
      @code = 49
    elsif @client.prefecture == '佐賀県'
      @code = 50
    elsif @client.prefecture == '長崎県'
      @code = 51
    elsif @client.prefecture == '熊本県'
      @code = 52
    elsif @client.prefecture == '大分県'
      @code = 53
    elsif @client.prefecture == '宮崎県'
      @code = 54
    elsif @client.prefecture == '鹿児島県'
      @code = 55
    else
      @client.prefecture == '沖縄県'
        @code = 56
    end
  end
  
  def change
    time = Time.zone.now
    if time.month == 1
      if @client.agreement2 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 2
      if @client.agreement3 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 3
      if @client.agreement4 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 5
      if @client.agreement6 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 6
      if @client.agreement7 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 7
      if @client.agreement8 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 8
      if @client.agreement9 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 9
      if @client.agreement10 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 10
      if @client.agreement11 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    elsif time.month == 11
      if @client.agreement12 == "有効"
        user = @client
        Continu.thank_you(user).deliver_now
      end
    else
      if time.month == 12
        if @client.agreement1 == "有効"
          user = @client
          Continu.thank_you(user).deliver_now
        end
      end
    end
  end
  
  private
  def client_params
    params.require(:client).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :agreement, :suspended, :start_date, :end_date, :agreement1, :agreement2, :agreement3, :agreement4, :agreement5, :agreement6, :agreement7, :agreement8, :agreement9, :agreement10, :agreement11, :agreement12, :operation_status, :sales, :update_no, :status_no, :contract_renewal)
  end
end
