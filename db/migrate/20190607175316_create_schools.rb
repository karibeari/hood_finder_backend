class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :level
      t.string :url
      t.float :latitude
      t.float :longitude
      t.integer :current_rank
      t.integer :last_year_rank

      t.timestamps
    end
  end
end
