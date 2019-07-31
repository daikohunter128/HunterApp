class EntryPresenter < ModelPresenter
  delegate :title, :body, to: :object
  
  def title
    object.title
  end
  
  def body
    object.body
  end
end