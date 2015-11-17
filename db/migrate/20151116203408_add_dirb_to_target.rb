class AddDirbToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :dirb, :string
    add_column :targets, :backdoors, :string
  end
end
