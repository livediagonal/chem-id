class TestResult < ApplicationRecord
  belongs_to :user
  has_many :hplc_raw_data
  has_many :hplc_compound_data
end
