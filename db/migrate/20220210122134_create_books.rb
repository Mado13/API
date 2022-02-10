class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.date :publishdate
      t.decimal :rating
      t.boolean :available
      t.references :author, foreign_key: true
      t.timestamps
    end
  end
end
