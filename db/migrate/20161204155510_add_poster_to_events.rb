class AddPosterToEvents < ActiveRecord::Migration[5.0]
  def up
    add_attachment :events, :poster
  end

  def down
    remove_attachment :events, :poster
  end
end
