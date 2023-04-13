class DropKits < ActiveRecord::Migration[7.0]
  def change
    drop_table :kits
  end
end
