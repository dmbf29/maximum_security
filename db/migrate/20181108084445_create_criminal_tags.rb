class CreateCriminalTags < ActiveRecord::Migration[5.2]
  def change
    create_table :criminal_tags do |t|
      t.references :criminal, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
