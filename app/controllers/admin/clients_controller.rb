class Admin::ClientsController < Admin::Base
  
  def index
    pref = Administrator.find(1)
    prefecture = pref.prefecture
    @clients = Client.where(prefecture: prefecture).order(:prefecture_cord).page(params[:page])
    
    #@clients = Client.order(:prefecture_cord)
      #.page(params[:page])
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
    agreement
  end
  
  def create
    time = Time.zone.now
    month = time.month
    if month < 12
      next_month = month + 1
    else
      next_month = 1
    end
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
    send = Administrator.find(1)
    @client.assign_attributes(client_params)
    if @client.save
      flash.notice = '代行業者アカウントを更新しました。'
      redirect_to :admin_root
      if send.send_code == "送信"
      　change
      end
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
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement1 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement2 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement1 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 2
      if @client.agreement3 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement2 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement3 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement2 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 3
      if @client.agreement4 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement3 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement4 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement3 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
     elsif time.month == 4
      if @client.agreement5 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement4 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement5 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement4 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 5
      if @client.agreement6 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement5 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement6 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement5 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 6
      if @client.agreement7 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement6 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement7 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement6 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 7
      if @client.agreement8 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement7 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement8 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement7 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 8
      if @client.agreement9 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement8 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement9 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement8 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 9
      if @client.agreement10 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement9 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement10 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement9 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 10
      if @client.agreement11 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement10 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement11 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement10 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    elsif time.month == 11
      if @client.agreement12 == "有効"
        user = @client
        ContinuMailer.thank_you(user).deliver_now
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement11 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement12 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement11 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
    else
      if time.month == 12
        if @client.agreement1 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        end
      end
      
      if time.day > 20
        if $agreement_month == "無効"
          if @client.agreement12 == "有効"
            user = @client
            ContinuMailer.reregistration(user).deliver_now
          else
            if $agreement_next_month == "無効"
              if @client.agreement1 == "有効"
                user = @client
                ContinuMailer.reregistration(user).deliver_now
              end
            end
          end
        end
      else
        if $agreement_month == "無効"
          if @client.agreement12 == "有効"
            user = @client
            ContinuMailer.registration(user).deliver_now
          end
        end
      end
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
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def aomori
    pref = Administrator.find(1)
    pref.prefecture = "青森県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def iwate
    pref = Administrator.find(1)
    pref.prefecture = "岩手県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def miyagi
    pref = Administrator.find(1)
    pref.prefecture = "宮城県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def akita
    pref = Administrator.find(1)
    pref.prefecture = "秋田県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def yamagata
    pref = Administrator.find(1)
    pref.prefecture = "山形県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def fukushima
    pref = Administrator.find(1)
    pref.prefecture = "福島県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def ibaraki
    pref = Administrator.find(1)
    pref.prefecture = "茨城県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def tochigi
    pref = Administrator.find(1)
    pref.prefecture = "栃木県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def gunma
    pref = Administrator.find(1)
    pref.prefecture = "群馬県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def saitama
    pref = Administrator.find(1)
    pref.prefecture = "埼玉県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def chiba
    pref = Administrator.find(1)
    pref.prefecture = "千葉県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def tokyo
    pref = Administrator.find(1)
    pref.prefecture = "東京都"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def kanagawa
    pref = Administrator.find(1)
    pref.prefecture = "神奈川県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def niigata
    pref = Administrator.find(1)
    pref.prefecture = "新潟県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def toyama
    pref = Administrator.find(1)
    pref.prefecture = "富山県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def ishikawa
    pref = Administrator.find(1)
    pref.prefecture = "石川県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def fukui
    pref = Administrator.find(1)
    pref.prefecture = "福井県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def yamanashi
    pref = Administrator.find(1)
    pref.prefecture = "山梨県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def nagano
    pref = Administrator.find(1)
    pref.prefecture = "長野県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def gifu
    pref = Administrator.find(1)
    pref.prefecture = "岐阜県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def shizuoka
    pref = Administrator.find(1)
    pref.prefecture = "静岡県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def aichi
    pref = Administrator.find(1)
    pref.prefecture = "愛知県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def mie
    pref = Administrator.find(1)
    pref.prefecture = "三重県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def shiga
    pref = Administrator.find(1)
    pref.prefecture = "滋賀県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def kyoto
    pref = Administrator.find(1)
    pref.prefecture = "京都府"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def oosaka
    pref = Administrator.find(1)
    pref.prefecture = "大阪府"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def hyogo
    pref = Administrator.find(1)
    pref.prefecture = "兵庫県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def nara
    pref = Administrator.find(1)
    pref.prefecture = "奈良県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def wakayama
    pref = Administrator.find(1)
    pref.prefecture = "和歌山県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def tottori
    pref = Administrator.find(1)
    pref.prefecture = "鳥取県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def shimane
    pref = Administrator.find(1)
    pref.prefecture = "島根県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def okayama
    pref = Administrator.find(1)
    pref.prefecture = "岡山県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def hiroshima
    pref = Administrator.find(1)
    pref.prefecture = "広島県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def yamaguchi
    pref = Administrator.find(1)
    pref.prefecture = "山口県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def tokushima
    pref = Administrator.find(1)
    pref.prefecture = "徳島県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def kagawa
    pref = Administrator.find(1)
    pref.prefecture = "香川県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def ehime
    pref = Administrator.find(1)
    pref.prefecture = "愛媛県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def kochi
    pref = Administrator.find(1)
    pref.prefecture = "高知県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def fukuoka
    pref = Administrator.find(1)
    pref.prefecture = "福岡県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def saga
    pref = Administrator.find(1)
    pref.prefecture = "佐賀県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def nagasaki
    pref = Administrator.find(1)
    pref.prefecture = "長崎県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def kumamoto
    pref = Administrator.find(1)
    pref.prefecture = "熊本県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def ooita
    pref = Administrator.find(1)
    pref.prefecture = "大分県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def miyazaki
    pref = Administrator.find(1)
    pref.prefecture = "宮崎県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def kagoshima
    pref = Administrator.find(1)
    pref.prefecture = "鹿児島県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  def okinawa
    pref = Administrator.find(1)
    pref.prefecture = "沖縄県"
    pref.send_code = "送信"
    pref.save
    redirect_to :admin_client_index
  end
  
  private
  def client_params
    params.require(:client).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :suspended, :start_date, :end_date, :agreement1, :agreement2, :agreement3, :agreement4, :agreement5, :agreement6, :agreement7, :agreement8, :agreement9, :agreement10, :agreement11, :agreement12, :operation_status, :sales, :update_no, :status_no, :contract_renewal1, :contract_renewal2, :contract_renewal3, :contract_renewal4, :contract_renewal5, :contract_renewal6, :contract_renewal7, :contract_renewal8, :contract_renewal9, :contract_renewal10, :contract_renewal11, :contract_renewal12)
  end
end
