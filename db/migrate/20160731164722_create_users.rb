class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :bio
      t.string :picture
      t.references :posse, foreign_key: true
      t.string :slack_name

      t.timestamps
    end
  end
end