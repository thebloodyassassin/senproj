class RemoveCoodinatorFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :coodinator, :string
  end
end
