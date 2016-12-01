class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :type
      t.decimal :latitude
      t.decimal :longitude
      t.string :location
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
