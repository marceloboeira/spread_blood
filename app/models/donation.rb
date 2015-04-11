class Donation < ActiveRecord::Base
  belongs_to :user, validate: true

  validates :location, length: { maximum: 100 }, allow_blank: false
  validates :amount,  :numericality => { :greater_than => 99, :less_than => 1600 }
  validates :donated_at, date: true, allow_blank: false
  validates :comment, length: { maximum: 400 }, allow_blank: true
end
