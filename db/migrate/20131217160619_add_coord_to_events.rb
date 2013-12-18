class AddCoordToEvents < ActiveRecord::Migration
  def change
    add_column :events, :coord, :string
  end
end
