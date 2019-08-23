class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :company_name, null: false
      t.string :company_name_kana, null: false
      t.string :representative, null: false
      t.string :representative_kana, null: false
      t.string :certification, null: false, default: ""
      t.string :postal_code1, null: false, default: ""
      t.string :postal_code2, null: false, default: ""
      t.string :prefecture, null: false, default: "選択してください"
      t.string :city, null: false, default: ""
      t.string :sales, null: false, default: ""
      t.string :address1, null: false, default: ""
      t.string :address2
      t.string :phone1, null: false, default: ""
      t.string :phone2, null: false, default: ""
      t.string :phone3, null: false, default: ""
      t.string :email, null: false
      t.string :email_for_index, null: false
      t.string :hashed_password
      t.integer :prefecture_cord
      t.integer :contract_renewal1, null: false, default: 1
      t.integer :contract_renewal2, null: false, default: 1
      t.integer :contract_renewal3, null: false, default: 1
      t.integer :contract_renewal4, null: false, default: 1
      t.integer :contract_renewal5, null: false, default: 1
      t.integer :contract_renewal6, null: false, default: 1
      t.integer :contract_renewal7, null: false, default: 1
      t.integer :contract_renewal8, null: false, default: 1
      t.integer :contract_renewal9, null: false, default: 1
      t.integer :contract_renewal10, null: false, default: 1
      t.integer :contract_renewal11, null: false, default: 1
      t.integer :contract_renewal12, null: false, default: 1
      t.string :operation_status, null: false, default: "電話で確認"
      t.integer :status_no, null: false, default: 9
      t.integer :update_no, null: false, default: 2
      t.string :agreement1, null: false, default: "無効"
      t.string :agreement2, null: false, default: "無効"
      t.string :agreement3, null: false, default: "無効"
      t.string :agreement4, null: false, default: "無効"
      t.string :agreement5, null: false, default: "無効"
      t.string :agreement6, null: false, default: "無効"
      t.string :agreement7, null: false, default: "無効"
      t.string :agreement8, null: false, default: "無効"
      t.string :agreement9, null: false, default: "無効"
      t.string :agreement10, null: false, default: "無効"
      t.string :agreement11, null: false, default: "無効"
      t.string :agreement12, null: false, default: "無効"
      t.date :start_date, null: false
      t.date :end_date
      t.boolean :suspended, null: false, default: false

      t.timestamps
    end
    
    add_index :clients, :email_for_index, unique: true
    add_index :clients, :company_name
    add_index :clients, :certification, unique: true
    add_index :clients, :prefecture_cord
    add_index :clients, :operation_status
  end
end
