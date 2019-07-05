class RemoveMatchScoreColumnFromNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :neighborhoods, :match_score, :string
  end
end
