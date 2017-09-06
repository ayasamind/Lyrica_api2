class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.integer :artist_id
      t.string :artist_name

      t.timestamps
    end
    add_index :artists
  end
end
