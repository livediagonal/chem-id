class CreateHplcData < ActiveRecord::Migration[5.1]
  def change
    create_table :hplc_data do |t|
      t.references :sample, foreign_key: true
      t.float :minute
      t.float :millivolts
    end
  end
end
