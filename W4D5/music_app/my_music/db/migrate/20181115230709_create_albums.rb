class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.integer :year, null: false
      t.boolean :type, null: false

      t.timestamps
    end
    add_index :albumns, :title, unique: true
    add_index :albums, :year
  end
end
