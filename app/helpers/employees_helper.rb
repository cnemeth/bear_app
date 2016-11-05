module EmployeesHelper
  def average_total_price(emp)
    return 0 if emp.orders.count == 0
    emp.orders.map{|o| o.total_price.to_f}.sum / emp.orders.count
  end
end
