class Sample < ApplicationRecord
  has_one :user
  has_many :hplc_data
end