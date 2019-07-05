class RemoveFilterColumnsFromFilters < ActiveRecord::Migration[5.2]
  def change
    remove_column :filters, :age_range, :string
    remove_column :filters, :income, :string
    remove_column :filters, :school, :string
    remove_column :filters, :population, :string
    remove_column :filters, :zestimate, :string
  end
end
