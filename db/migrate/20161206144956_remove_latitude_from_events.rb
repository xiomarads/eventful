class RemoveLatitudeFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :latitude, :decimal
  end
end
