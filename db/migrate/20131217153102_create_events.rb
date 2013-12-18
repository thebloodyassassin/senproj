class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :descrip
      t.string :coordinator

      t.timestamps
    end
  end
end
