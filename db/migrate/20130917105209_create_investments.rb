class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.float :square_feet, :default => 0
      t.float :cost_of_property, :default => 0
      t.float :sale_value_of_property, :default => 0
      t.float :return_of_investment, :default => 0

      t.timestamps
    end
  end
end
