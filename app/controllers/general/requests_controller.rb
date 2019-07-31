class General::RequestsController < General::Base
  $a = rand(1..2000)
  def edit
    @request_form = General::RequestForm.new(Request.find($a))
  end
  
  def update
    @request_form = Request.find($a)
    
    @request_form.assign_attributes(client_params)
    if @request_form.save
      flash.notice = '検索した都道府県-市区町村の代行業者です。'
      redirect_to :general_clients
    else
      flash.now.alert = '入力に誤りがあります。'
      render action: 'edit'
    end
  end
  
  def advertisement
    render action: 'advertisement'
  end
    
  private
  def client_params
    params.require(:request).permit(:prefecture, :city)
  end
end
