class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :name
      t.string :sample_type
      t.string :test_platform
      t.string :test_type
      t.timestamp :test_ran_at
      t.text :notes
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
