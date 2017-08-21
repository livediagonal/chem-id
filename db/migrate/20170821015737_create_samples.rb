class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.text :notes
      t.references :user, foreign_key: true
    end
  end
end