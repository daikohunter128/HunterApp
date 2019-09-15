class AddPrefectureToAdministrators < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :prefecture, :string
  end
end
