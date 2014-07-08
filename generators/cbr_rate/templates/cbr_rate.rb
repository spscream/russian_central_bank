class CbrRate < ActiveRecord::Base
  validates :date, presence: true
  validates :rates, presence: true
end