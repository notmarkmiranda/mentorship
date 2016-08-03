class CreateStudent < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.references :user, foreign_key: true
      t.references :cohort, foreign_key: true
    end
  end
end
