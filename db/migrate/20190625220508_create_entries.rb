class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.references :client, null: false
      t.string :body, null: false, default: "ご利用有り難うございます。お客様と、お車を安全に送迎いたします。"

      t.timestamps
    end
  end
end
