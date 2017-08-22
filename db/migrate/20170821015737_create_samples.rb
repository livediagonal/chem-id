class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :name
      t.string :sample_type
      t.string :test_platform
      t.string :test_type
      t.timestamp :test_time
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
