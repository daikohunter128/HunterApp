class General::ClientsController < General::Base
  def index
    time = Time.zone.now
    month = time.month
     @request = Request.find($a)
    @prefecture_pre = @request.prefecture
    @prefecture_city = @request.city
    if month == 1
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement1: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement1: "有効").order(:update_no, :status_no)
    elsif month == 2
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement2: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement2: "有効").order(:update_no, :status_no)
    elsif month == 3
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement3: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement3: "有効").order(:update_no, :status_no)
    elsif month == 4
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement4: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement4: "有効").order(:update_no, :status_no)
    elsif month == 5
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement5: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement5: "有効").order(:update_no, :status_no)
    elsif month == 6
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement6: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement6: "有効").order(:update_no, :status_no)
    elsif month == 7
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement7: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement7: "有効").order(:update_no, :status_no)
    elsif month == 8
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement8: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement8: "有効").order(:update_no, :status_no)
    elsif month == 9
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement9: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement9: "有効").order(:update_no, :status_no)
    elsif month == 10
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement10: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement10: "有効").order(:update_no, :status_no)
    elsif month == 11
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement11: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement11: "有効").order(:update_no, :status_no)
    else
      @clients = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement12: "無効").order(:update_no, :status_no)
      @clients_special = Client.where(prefecture: @request.prefecture).where(sales: @request.city).where(agreement12: "有効").order(:update_no, :status_no)
    end
    render action: 'index'
  end
  
  def show
    @client = Client.find(params[:id])
    @entry = Entry.find_by(client_id: (params[:id]))
    @entry_form = Client::EntryForm.new(Entry.find_by(client_id: (params[:id])))
    @request = Request.find($a)
  end
  
  def company
    request = Request.find(1)
    @requests = Client.where(prefecture: request.prefecture).where(city: request.city)
    render action: 'company'
  end
  
  def entry
    @entry_form = Client::EntryForm.new(Entry.find(params[:id]))
  end
end
