class Client::EntriesController < Client::Base
  
  def edit
    @entry_form = Client::EntryForm.new(Entry.find(params[:id]))
  end
  
  def update
    @entry_form = Client::EntryForm.new(Entry.find(params[:id]))
    @entry_form.assign_attributes(params[:form])
    if @entry_form.save
      flash.notice = 'コメントを更新しました。'
      redirect_to :client_account
    else
      render action: 'edit'
    end
  end
  
  private
  def entry_params
    params.require(:client).permit(:body)
  end
end
