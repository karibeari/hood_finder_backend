class AddMatchScoreFloatToNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    add_column :neighborhoods, :match_score, :float
  end
end
