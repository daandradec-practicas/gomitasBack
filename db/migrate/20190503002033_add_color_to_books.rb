class AddColorToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :color, :string
  end
end
