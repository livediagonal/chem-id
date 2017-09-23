class CreateHplcCompoundData < ActiveRecord::Migration[5.1]
  def change
    create_table :hplc_compound_data do |t|
      t.references :test_result, foreign_key: true, index: true

      t.string :compound
      t.float :concentration
    end
  end
end
