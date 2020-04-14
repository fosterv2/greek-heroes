class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :animal_trait
      t.boolean :alive

      t.timestamps
    end
  end
end
