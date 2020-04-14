class CreateHeroes < ActiveRecord::Migration[6.0]
  def change
    create_table :heroes do |t|
      t.string :name
      t.integer :age
      t.string :power
      t.integer :god_id
      t.integer :user_id

      t.timestamps
    end
  end
end
