class AddDefaultValueToPosseId < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :posse_id, :integer, default: 1
  end
end
