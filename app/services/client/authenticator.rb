class Client::Authenticator
  def initialize(client)
    @client = client
  end
    
  def authenticate(raw_password)
    @client &&
    @client.hashed_password &&
    @client.start_date <= Date.today &&
    (@client.end_date.nil? || @client.end_date > Date.today) &&
    BCrypt::Password.new(@client.hashed_password) == raw_password
  end
end