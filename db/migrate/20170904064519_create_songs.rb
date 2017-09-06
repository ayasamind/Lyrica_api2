class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs, primary_key:"song_id" do |t|
      t.string :song_name
      t.references :album
      t.references :artist
      t.text :lyrics_data
      t.string :youtube_id
      t.integer :youtube_start

      t.timestamps
    end

  end
end
