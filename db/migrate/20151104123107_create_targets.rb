class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.text :ipaddress
      t.text :port

      t.timestamps null: false
    end
  end
end
