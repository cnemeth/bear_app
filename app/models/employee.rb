# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  signup_date :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Employee < ApplicationRecord
  has_many :orders, inverse_of: :employee, dependent: :destroy
  accepts_nested_attributes_for :orders
end
