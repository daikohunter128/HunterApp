class AddSendCodeToAdministrators < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :send_code, :string
  end
end
