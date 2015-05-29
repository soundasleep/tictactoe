class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.references :created_by, index: true, foreign_key: true
      t.references :opponent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
