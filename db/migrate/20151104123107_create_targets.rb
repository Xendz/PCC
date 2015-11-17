class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :ipaddress
      t.text :port

      t.timestamps null: false
    end
  end
end
