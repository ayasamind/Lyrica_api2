class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists, primary_key:"artist_id" do |t|
      t.string :artist_name

      t.timestamps
    end
  end
end
