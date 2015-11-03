class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :target
      t.text :ip
      t.integer :port

      t.timestamps null: false
    end
  end
end
