class CreateFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.string :age_range
      t.string :income
      t.string :school
      t.string :population
      t.string :zestimate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
