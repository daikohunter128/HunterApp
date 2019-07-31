class RequestPresenter < ModelPresenter
  delegate :company_name, :company_name_kana, :operation_status, :phone1, :phone2, :phone3, to: :object
  
  def id
    object.id
  end
  
  def company_name
    object.company_name
  end
  
  def company_name_kana
    object.company_name_kana
  end
  
  def operation_status
    object.operation_status
  end
  
  def phone1
    object.phone1
  end
  
  def phone2
    object.phone2
  end
  
  def phone3
    object.phone3
  end
end