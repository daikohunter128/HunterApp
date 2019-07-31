class CreateClientEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :client_events do |t|
      t.references :client, null: false
      t.string :type, null: false
      t.datetime :created_at, null: false
    end
    
    add_index :client_events, :created_at
    add_index :client_events, [ :client_id, :created_at ]
    add_foreign_key :client_events, :clients
  end
end
