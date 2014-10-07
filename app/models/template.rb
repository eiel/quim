class Template < ActiveRecord::Base

  def deliver(customers)
    customers.find_each do |customer|
      Message.basic(customer,@template.body).deliver
    end
  end
end
