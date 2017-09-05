class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.integer :album_id
      t.string :album_name
      t.references :artist_id

      t.timestamps
    end
    add_index :albums, :album_id
  end
end
