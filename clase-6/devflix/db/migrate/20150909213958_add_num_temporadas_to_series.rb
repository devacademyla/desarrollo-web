class AddNumTemporadasToSeries < ActiveRecord::Migration
  def change
    add_column :series, :num_temporadas, :integer
  end
end
