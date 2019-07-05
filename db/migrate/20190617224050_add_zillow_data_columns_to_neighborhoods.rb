class AddZillowDataColumnsToNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    add_column :neighborhoods, :MoM, :float
    add_column :neighborhoods, :QoQ, :float
    add_column :neighborhoods, :YoY, :float
    add_column :neighborhoods, :five_year, :float
    add_column :neighborhoods, :ten_year, :float
  end
end
