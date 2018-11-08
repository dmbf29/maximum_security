class RemoveSpecialtyFromCriminals < ActiveRecord::Migration[5.2]
  def change
    remove_column :criminals, :specialty, :string
  end
end
