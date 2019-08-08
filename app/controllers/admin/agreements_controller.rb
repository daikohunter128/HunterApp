class Admin::AgreementsController < Admin::Base
  def edit
    @client = Client.find(params[:id])
    agreement
  end
  
  def update
    @client = Client.find(params[:id])
    @client.assign_attributes(client_params)
    if @client.save
      flash.notice = '利用状況を有効にしました。'
      redirect_to :admin_clients
      chenge
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
  
  def chenge
    time = Time.zone.now
    if time.month == 1
      if time.day < 21
        if @client.agreement2 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement1 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement2 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement1 = "有効"
          @client.save
        end
      end
    elsif time.month == 2
      if time.day < 21
        if @client.agreement3 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement2 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement3 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement2 = "有効"
          @client.save
        end
      end
    elsif time.month == 3
      if time.day < 21
        if @client.agreement4 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement3 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement4 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement3 = "有効"
          @client.save
        end
      end
    elsif time.month == 4
      if time.day < 21
        if @client.agreement5 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement4 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement5 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement4 = "有効"
          @client.save
        end
      end
    elsif time.month == 5
      if time.day < 21
        if @client.agreement6 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement5 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement6 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement5 = "有効"
          @client.save
        end
      end
    elsif time.month == 6
      if time.day < 21
        if @client.agreement7 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement6 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement7 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement6 = "有効"
          @client.save
        end
      end
    elsif time.month == 7
      if time.day < 21
        if @client.agreement8 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement7 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement8 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement7 = "有効"
          @client.save
        end
      end
    elsif time.month == 8
      if time.day < 21
        if @client.agreement9 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement8 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement9 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement8 = "有効"
          @client.save
        end
      end
    elsif time.month == 9
      if time.day < 21
        if @client.agreement10 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement9 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement10 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement9 = "有効"
          @client.save
        end
      end
    elsif time.month == 10
      if time.day < 21
        if @client.agreement11 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement10 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement11 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement10 = "有効"
          @client.save
        end
      end
    elsif time.month == 11
      if time.day < 21
        if @client.agreement12 == "有効"
          user = @client
          ContinuMailer.thank_you(user).deliver_now
        else
          if $agreement_month == "無効"
            if @client.agreement11 == "有効"
              user = @client
              ContinuMailer.registration(user).deliver_now
            end
          end
        end
      else
        if @client.agreement12 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement11 = "有効"
          @client.save
        end
      end
    else
      if time.month == 12
        if time.day < 21
          if @client.agreement1 == "有効"
            user = @client
            ContinuMailer.thank_you(user).deliver_now
          else
            if $agreement_month == "無効"
              if @client.agreement12 == "有効"
                user = @client
                ContinuMailer.registration(user).deliver_now
              end
            end
          end
        end
      else
        if @client.agreement1 == "有効"
          user = @client
          ContinuMailer.reregistration(user).deliver_now
          @client.agreement12 = "有効"
          @client.save
        end
      end
    end
  end
  
  private
  def client_params
    params.require(:client).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :agreement, :suspended, :start_date, :end_date, :agreement1, :agreement2, :agreement3, :agreement4, :agreement5, :agreement6, :agreement7, :agreement8, :agreement9, :agreement10, :agreement11, :agreement12, :operation_status, :sales, :update_no, :status_no, :contract_renewal1, :contract_renewal2, :contract_renewal3, :contract_renewal4, :contract_renewal5, :contract_renewal6, :contract_renewal7, :contract_renewal8, :contract_renewal9, :contract_renewal10, :contract_renewal11, :contract_renewal12)
  end
end
