class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.string :location
      t.integer :hero_id
      t.integer :monster_id

      t.timestamps
    end
  end
end
