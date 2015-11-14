class AddLocationsToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :latitude, :float
    add_column :targets, :longitude, :float
  end
end
