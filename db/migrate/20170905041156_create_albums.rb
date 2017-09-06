class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums, primary_key:"album_id" do |t|
      t.string :album_name
      t.references :artist

      t.timestamps
    end

  end
end
