class CreatePosses < ActiveRecord::Migration[5.0]
  def change
    create_table :posses do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
