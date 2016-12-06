class RemoveLinkFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :link, :string
  end
end
