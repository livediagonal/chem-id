class CreateHplcRawData < ActiveRecord::Migration[5.1]
  def change
    create_table :hplc_raw_data do |t|
      t.references :test_result, foreign_key: true, index: true

      t.float :time_in_min
      t.float :intensity_in_mv
    end
  end
end
