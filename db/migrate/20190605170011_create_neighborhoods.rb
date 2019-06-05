class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.float :school_score
      t.integer :average_age
      t.integer :median_income
      t.integer :zestimate
      t.string :NBRHD_NAME
      t.integer :POPULATION_2010
      t.float :PCT_HISPANIC
      t.float :PCT_WHITE
      t.float :PCT_BLACK
      t.float :PCT_AMERIND
      t.float :PCT_ASIAN
      t.float :PCT_HAW_PACIS
      t.float :PCT_OTHER_RACE
      t.float :PCT_TWO_OR_MORE_RACES
      t.integer :FEMALE
      t.integer :MALE
      t.float :PCT_LESS_18
      t.float :PCT_65_PLUS
      t.integer :FAMILIES
      t.integer :HOUSING_UNITS
      t.integer :HU_OWNED
      t.integer :HU_RENTED

      t.timestamps
    end
  end
end
