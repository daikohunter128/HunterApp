class Admin::ChangeEmailForm
  include ActiveModel::Model
  
  attr_accessor :object, :current_email, :new_email,
    :new_email_confirmation
  validates :new_email, presence: true, confirmation: true
  
  validate do
    unless Admin::Authenticator.new(object).authenticate(current_email)
      errors.add(:current_email, :wrong)
    end
  end
  
  def save
    if valid?
      object.email = new_email
      object.save!
    end
  end
end