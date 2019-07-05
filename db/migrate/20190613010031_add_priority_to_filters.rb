class AddPriorityToFilters < ActiveRecord::Migration[5.2]
  def change
    add_column :filters, :population_priority, :integer
    add_column :filters, :over_65_priority, :integer
    add_column :filters, :under_18_priority, :integer
    add_column :filters, :zestimate_priority, :integer
    add_column :filters, :percent_over_65_min, :integer
    add_column :filters, :percent_over_65_max, :integer
    add_column :filters, :percent_under_18_min, :integer
    add_column :filters, :percent_under_18_max, :integer
    add_column :filters, :population_min, :integer
    add_column :filters, :population_max, :integer
  end
end
