class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
