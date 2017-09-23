class HplcRawDatum < ApplicationRecord
  belongs_to :test_result

  default_scope { order(time_in_min: :asc) }
end
