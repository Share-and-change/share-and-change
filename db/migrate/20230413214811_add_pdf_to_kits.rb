class AddPdfToKits < ActiveRecord::Migration[7.0]
  def change
    add_column :kits, :pdf, :string
  end
end
