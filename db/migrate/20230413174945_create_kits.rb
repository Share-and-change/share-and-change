class CreateKits < ActiveRecord::Migration[7.0]
  def change
    create_table :kits do |t|
      t.string :name
      t.text :description
      t.text :image
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
