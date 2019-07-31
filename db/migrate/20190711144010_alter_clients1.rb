class AlterClients1 < ActiveRecord::Migration[5.1]
  def change
    add_index :clients, [ :prefecture, :company_name_kana ]
    add_index :clients, :company_name_kana
  end
end
