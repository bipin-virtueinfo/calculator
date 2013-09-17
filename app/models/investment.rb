class Investment < ActiveRecord::Base
  validates_presence_of :square_feet, :cost_of_property, :sale_value_of_property

  def sale_value_of_property=(val)
    self[:return_of_investment] = (self.cost_of_property.to_f - val.to_f)/self.cost_of_property.to_f * 100
    self[:sale_value_of_property] = val
  end

  def profit_per_square_feet
    ((self.cost_of_property - self.sale_value_of_property)/self.square_feet).round(2)
  end
end
