# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  total_price :decimal(8, 2)
#  num_units   :integer          default(0)
#  employee_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :employee, inverse_of: :orders
  validates :employee, presence: true

  scope :last_ninety_days, ->() {where('created_at > ?', 90.days.ago)}
end
