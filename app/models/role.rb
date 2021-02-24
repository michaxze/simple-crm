class Role < ApplicationRecord
  validates_uniqueness_of :code
  validates_presence_of :code
end
