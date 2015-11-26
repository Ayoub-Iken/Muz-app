class CreateMuzs < ActiveRecord::Migration
  def change
    create_table :muzs do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
