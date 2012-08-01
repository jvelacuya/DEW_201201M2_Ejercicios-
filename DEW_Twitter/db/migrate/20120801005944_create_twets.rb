class CreateTwets < ActiveRecord::Migration
  def change
    create_table :twets do |t|
      t.string :user
      t.string :message
      t.string :status

      t.timestamps
    end
  end
end
