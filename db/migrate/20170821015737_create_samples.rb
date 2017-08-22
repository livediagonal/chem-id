class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :name
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
