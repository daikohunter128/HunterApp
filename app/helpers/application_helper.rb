module ApplicationHelper
  include HtmlBuilder
  
  def document_title
    if @title.present?
      "#{@title} - HUNTER"
    else
      'HUNTER'
    end
  end
end
