class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :prefecture, null: false, default: "選択"
      t.string :city, null: false, default: "選択"
      t.timestamps
    end
    
    add_index :requests, :prefecture
    add_index :requests, :city
  end
end
