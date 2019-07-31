class UserFormPresenter < FormPresenter
  def password_field_block(name, label_text, options = {})
    if object.new_record?
      super(name, label_text, options)
    else
      markup(:div, class: 'input-block') do |m|
        m << decorated_label(name, label_text, options.merge(required: false))
        m << password_field(name, options.merge(disabled: true))
        m << ' '
        m.button('変更する', type: 'button', id: 'enable-password-field')
        m.button('変更しない', type: 'button', id: 'disable-password-field',
          style: 'display: none')
        m << error_messages_for(name)
      end
    end
  end
  
  def company_name_block(name, label_text, options = {})
    markup(:div, class: 'input-block') do |m|
      m << decorated_label(name, label_text, options)
      m << text_field(name, options)
      m << error_messages_for(name)
    end
  end
  
  def postal_code_block(name1, name2, label_text, options = {})
    markup(:div, class: 'input-block') do |m|
      m << decorated_label(name1, label_text, options)
      m << text_field(name1, options)
      m.span '- ', class: 'notes'
      m << text_field(name2, options)
      m << error_messages_for(name1)
      m << error_messages_for(name2)
    end
  end
  
  def phone_block(name1, name2, name3, label_text, options = {})
    markup(:div, class: 'input-block') do |m|
      m << decorated_label(name1, label_text, options)
      m << text_field(name1, options)
      m.span '- ', class: 'notes'
      m << text_field(name2, options)
      m.span '- ', class: 'notes'
      m << text_field(name3, options)
      m << error_messages_for(name1)
      m << error_messages_for(name2)
      m << error_messages_for(name3)
    end
  end
  
  def name_block(name, label_text, options = {})
    markup(:div, class: 'input-block') do |m|
      m << decorated_label(name, label_text, options)
      m << text_field(name, options)
      m << error_messages_for(name)
    end
  end
end