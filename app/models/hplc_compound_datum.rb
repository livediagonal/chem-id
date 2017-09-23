class HplcCompoundDatum < ApplicationRecord
  belongs_to :test_result

  default_scope { order(compound: :asc) }
end
