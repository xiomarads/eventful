class AddVotesToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :votes, :integer, default: 0 

  end
end
