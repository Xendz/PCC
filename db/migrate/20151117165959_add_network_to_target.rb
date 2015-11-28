class AddNetworkToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :net1, :string
    add_column :targets, :net2, :string
    add_column :targets, :net3, :string
    add_column :targets, :net4, :string
    add_column :targets, :net5, :string
    add_column :targets, :opsys, :string
  end
end
