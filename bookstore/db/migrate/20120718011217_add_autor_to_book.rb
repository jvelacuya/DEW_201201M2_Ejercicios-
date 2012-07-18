class AddAutorToBook < ActiveRecord::Migration
  def change
    add_column :books, :autor, :string

  end
end
