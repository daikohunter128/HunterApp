class ClientPresenter < ModelPresenter
  delegate :suspended?, to: :object
  
  def suspended_mark
    suspended? ? raw('&#x2611;') : raw('&#x2610;')
  end
  
  def company_name
    object.company_name
  end
  
  def company_name_kana
    object.company_name_kana
  end
  
  def representative
    object.representative
  end
  
  def representative_kana
    object.representative_kana
  end
  
  def certification
    object.certification
  end
  
  def postal_code1
    object.postal_code1
  end
  
  def postal_code2
    object.postal_code2
  end
  
  def prefecture
    object.prefecture
  end
  
  def city
    object.city
  end
  
  def address1
    object.address1
  end
  
  def address2
    object.address2
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
  
  def email
    object.email
  end
  
  def phone1
    object.phone1
  end
  
  def prefecture_cord
    object.prefecture_cord
  end
  
  def operation_status
    object.operation_status
  end
  
  def agreement1
    object.agreement1
  end
  
  def agreement2
    object.agreement2
  end
  
  def agreement3
    object.agreement3
  end
  
  def agreement4
    object.agreement4
  end
  
  def agreement5
    object.agreement5
  end
  
  def agreement6
    object.agreement6
  end
  
  def agreement7
    object.agreement7
  end
  
  def agreement8
    object.agreement8
  end
  
  def agreement9
    object.agreement9
  end
  
  def agreement10
    object.agreement10
  end
  
  def agreement11
    object.agreement11
  end
  
  def agreement12
    object.agreement12
  end
end