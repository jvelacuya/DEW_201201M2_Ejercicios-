class CreateAutors < ActiveRecord::Migration
  def change
    create_table :autors do |t|
      t.string :name

      t.timestamps
    end
  end
end
