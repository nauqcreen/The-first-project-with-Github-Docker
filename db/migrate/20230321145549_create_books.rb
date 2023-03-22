class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :year
      t.datetime :borrowed_at
      t.boolean :available
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
