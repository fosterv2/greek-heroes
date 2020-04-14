class CreateGods < ActiveRecord::Migration[6.0]
  def change
    create_table :gods do |t|
      t.string :name
      t.string :affinity
      t.string :img_url

      t.timestamps
    end
  end
end
