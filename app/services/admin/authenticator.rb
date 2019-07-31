class Admin::Authenticator
  def initialize(administrator)
    @administrator = administrator
  end
    
  def authenticate(raw_password)
    @administrator &&
    @administrator.start_date <= Date.today &&
    (@administrator.end_date.nil? || @client.end_date > Date.today) &&
    @administrator.hashed_password &&
    BCrypt::Password.new(@administrator.hashed_password) == raw_password
  end
end