module OrdersHelper
  def orders_by_employee_signup_date(orders)
    Order.joins("INNER JOIN employees ON orders.employee_id = employees.id ORDER BY employees.signup_date DESC")
  end
end
