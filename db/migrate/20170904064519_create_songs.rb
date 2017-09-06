class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.integer :song_id
      t.string :song_name
      t.references :album
      t.references :artist
      t.text :lyrics_data
      t.string :youtube_id
      t.integer :youtube_start

      t.timestamps
    end
    add_index :songs
  end
end
