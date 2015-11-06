class Targets < ActiveRecord::Migration
  def change
add_column :table_name, :lat, :decimal, {:precision=>10, :scale=>6}
add_column :table_name, :lng, :decimal, {:precision=>10, :scale=>6}
  end
end
