class CreateCriminals < ActiveRecord::Migration[5.2]
  def change
    create_table :criminals do |t|
      t.string :name
      t.string :specialty
      t.string :picture_url
      t.references :prison, foreign_key: true

      t.timestamps
    end
  end
end
