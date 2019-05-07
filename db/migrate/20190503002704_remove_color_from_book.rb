class RemoveColorFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :color, :string
  end
end
