class RemoveLegacyProperties < ActiveRecord::Migration[7.0]
  def change
    remove_column :capsules, :poster
    remove_column :charities, :logo
  end
end
