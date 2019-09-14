class Admin::ChoosesController < Admin::Base
  
  def index_first
    pref = Administrator.find(1)
    prefecture = pref.prefecture
    @clients = Client.where(prefecture: prefecture).order(:prefecture_cord).page(params[:page])
    
    #@clients = Client.order(:prefecture_cord)
      #.page(params[:page])
  end
  
   def show
    @client = Client.find(params[:id])
  end
  
  def edit
    @client = Client.find(params[:id])
    @prefecture = @client.prefecture
    agreement
  end
  
  
  def update
    @client = Client.find(params[:id])
    @client.assign_attributes(client_params)
    if @client.save
      flash.notice = '代行業者アカウントを更新しました。'
      redirect_to :admin_root
    else
      render action: 'edit'
    end
  end
  
  def agreement
    time = Time.zone.now
    month = time.month
    if month < 12
      next_month = month + 1
    else
      next_month = 1
    end
    
    if month == 1
      $agreement_month = @client.agreement1
      $agreement_next_month = @client.agreement2
    elsif month == 2
      $agreement_month = @client.agreement2
      $agreement_next_month = @client.agreement3
    elsif month == 3
      $agreement_month = @client.agreement3
      $agreement_next_month = @client.agreement4
    elsif month == 4
      $agreement_month = @client.agreement4
      $agreement_next_month = @client.agreement5
    elsif month == 5
      $agreement_month = @client.agreement5
      $agreement_next_month = @client.agreement6
    elsif month == 6
      $agreement_month = @client.agreement6
      $agreement_next_month = @client.agreement7
    elsif month == 7
      $agreement_month = @client.agreement7
      $agreement_next_month = @client.agreement8
    elsif month == 8
      $agreement_month = @client.agreement8
      $agreement_next_month = @client.agreement9
    elsif month == 9
      $agreement_month = @client.agreement9
      $agreement_next_month = @client.agreement10
    elsif month == 10
      $agreement_month = @client.agreement10
      $agreement_next_month = @client.agreement11
    elsif month == 11
      $agreement_month = @client.agreement11
      $agreement_next_month = @client.agreement12
    else
      $agreement_month = @client.agreement12
      $agreement_next_month = @client.agreement1
    end
  end
  
  def prefecture_search
    render action: 'prefecture_search'
  end
  
  def hokkaidou
    pref = Administrator.find(1)
    pref.prefecture = "北海道"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def aomori
    pref = Administrator.find(1)
    pref.prefecture = "青森県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def iwate
    pref = Administrator.find(1)
    pref.prefecture = "岩手県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def miyagi
    pref = Administrator.find(1)
    pref.prefecture = "宮城県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def akita
    pref = Administrator.find(1)
    pref.prefecture = "秋田県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def yamagata
    pref = Administrator.find(1)
    pref.prefecture = "山形県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def fukushima
    pref = Administrator.find(1)
    pref.prefecture = "福島県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def ibaraki
    pref = Administrator.find(1)
    pref.prefecture = "茨城県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def tochigi
    pref = Administrator.find(1)
    pref.prefecture = "栃木県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def gunma
    pref = Administrator.find(1)
    pref.prefecture = "群馬県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def saitama
    pref = Administrator.find(1)
    pref.prefecture = "埼玉県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def chiba
    pref = Administrator.find(1)
    pref.prefecture = "千葉県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def tokyo
    pref = Administrator.find(1)
    pref.prefecture = "東京都"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def kanagawa
    pref = Administrator.find(1)
    pref.prefecture = "神奈川県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def niigata
    pref = Administrator.find(1)
    pref.prefecture = "新潟県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def toyama
    pref = Administrator.find(1)
    pref.prefecture = "富山県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def ishikawa
    pref = Administrator.find(1)
    pref.prefecture = "石川県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def fukui
    pref = Administrator.find(1)
    pref.prefecture = "福井県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def yamanashi
    pref = Administrator.find(1)
    pref.prefecture = "山梨県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def nagano
    pref = Administrator.find(1)
    pref.prefecture = "長野県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def gifu
    pref = Administrator.find(1)
    pref.prefecture = "岐阜県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def shizuoka
    pref = Administrator.find(1)
    pref.prefecture = "静岡県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def aichi
    pref = Administrator.find(1)
    pref.prefecture = "愛知県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def mie
    pref = Administrator.find(1)
    pref.prefecture = "三重県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def shiga
    pref = Administrator.find(1)
    pref.prefecture = "滋賀県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def kyoto
    pref = Administrator.find(1)
    pref.prefecture = "京都府"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def oosaka
    pref = Administrator.find(1)
    pref.prefecture = "大阪府"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def hyogo
    pref = Administrator.find(1)
    pref.prefecture = "兵庫県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def nara
    pref = Administrator.find(1)
    pref.prefecture = "奈良県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def wakayama
    pref = Administrator.find(1)
    pref.prefecture = "和歌山県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def tottori
    pref = Administrator.find(1)
    pref.prefecture = "鳥取県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def shimane
    pref = Administrator.find(1)
    pref.prefecture = "島根県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def okayama
    pref = Administrator.find(1)
    pref.prefecture = "岡山県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def hiroshima
    pref = Administrator.find(1)
    pref.prefecture = "広島県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def yamaguchi
    pref = Administrator.find(1)
    pref.prefecture = "山口県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def tokushima
    pref = Administrator.find(1)
    pref.prefecture = "徳島県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def kagawa
    pref = Administrator.find(1)
    pref.prefecture = "香川県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def ehime
    pref = Administrator.find(1)
    pref.prefecture = "愛媛県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def kochi
    pref = Administrator.find(1)
    pref.prefecture = "高知県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def fukuoka
    pref = Administrator.find(1)
    pref.prefecture = "福岡県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def saga
    pref = Administrator.find(1)
    pref.prefecture = "佐賀県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def nagasaki
    pref = Administrator.find(1)
    pref.prefecture = "長崎県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def kumamoto
    pref = Administrator.find(1)
    pref.prefecture = "熊本県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def ooita
    pref = Administrator.find(1)
    pref.prefecture = "大分県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def miyazaki
    pref = Administrator.find(1)
    pref.prefecture = "宮崎県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def kagoshima
    pref = Administrator.find(1)
    pref.prefecture = "鹿児島県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  def okinawa
    pref = Administrator.find(1)
    pref.prefecture = "沖縄県"
    pref.send_code = "送信無"
    pref.save
    redirect_to :index_first_admin_choose
  end
  
  private
  def client_params
    params.require(:client).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :suspended, :start_date, :end_date, :agreement1, :agreement2, :agreement3, :agreement4, :agreement5, :agreement6, :agreement7, :agreement8, :agreement9, :agreement10, :agreement11, :agreement12, :operation_status, :sales, :update_no, :status_no, :contract_renewal1, :contract_renewal2, :contract_renewal3, :contract_renewal4, :contract_renewal5, :contract_renewal6, :contract_renewal7, :contract_renewal8, :contract_renewal9, :contract_renewal10, :contract_renewal11, :contract_renewal12)
  end
end
