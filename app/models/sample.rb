class Sample < ApplicationRecord
  belongs_to :user
  has_many :hplc_data
end