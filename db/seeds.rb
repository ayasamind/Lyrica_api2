# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
Artist.create(:artist_id => '1', :artist_name => 'sample_artist')
Album.create(:album_id => '1', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '2', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '3', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '4', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '5', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '6', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '7', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '8', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '9', :album_name => 'sample_album', :artist_id => '1')
Album.create(:album_id => '10', :album_name => 'sample_album', :artist_id => '1')


%w(1 2 3).each do |number|
    album_id = Album.find_bu(album_id: number)
end
Song.create(:song_id => '1', :song_name => 'sorry', :album_id => number, :artist_id => '1', :lyrics_data => 'sample', :youtube_id => 'sample', :youtube_start => '50')
=======

Artist.create(:artist_id => 1, :artist_name => 'sample1_artist')
Artist.create(:artist_id => 2, :artist_name => 'sample2_artist')
Album.create(:album_name => 'sample_album', :artist_id => 1)
Album.create(:album_name => 'album2', :artist_id => 1)
Album.create(:album_name => 'sample3', :artist_id => 1)
Album.create(:album_name => 'sample_album2', :artist_id => 2)
Album.create(:album_name => 'sample_album3', :artist_id => 2)

Song.create(:song_id => 1, :song_name => 'sorry', :album_id => 1, :artist_id => 1, :lyrics_data => 'sample', :youtube_id => 'sample', :youtube_start => 50)
>>>>>>> f5ee7d9e2241e0515b7defb2d4997ab42ca686d0
Song.create(
    :song_id => 2, 
    :song_name => 'sample', 
    :album_id => 2, 
    :artist_id => 2, 
    :lyrics_data => '{"lines":[{"time":24540,"words":[{"end":26140,"start":24540,"string":"ざわめい"},{"end":26600,"start":26170,"string":"た"},{"end":27530,"start":26630,"string":"街"}]}', 
    :youtube_id => 'sample', 
<<<<<<< HEAD
    :youtube_start => '50')

Song.create(:song_id => '3', :song_name => 'sample3', :album_id => number, :artist_id => '3', :lyrics_data => 'sample3', :youtube_id => 'sample', :youtube_start => '50')
Song.create(:song_id => '4', :song_name => 'sample4', :album_id => number, :artist_id => '4', :lyrics_data => 'sample4', :youtube_id => 'sample', :youtube_start => '50')
Song.create(:song_id => '5', :song_name => 'sample5', :album_id => number, :artist_id => '5', :lyrics_data => 'sample5', :youtube_id => 'sample', :youtube_start => '50')
Song.create(:song_id => '6', :song_name => 'sample6', :album_id => number, :artist_id => '6', :lyrics_data => 'sample6', :youtube_id => 'sample', :youtube_start => '50')
Song.create(:song_id => '7', :song_name => 'sample7', :album_id => number, :artist_id => '7', :lyrics_data => 'sample7', :youtube_id => 'sample', :youtube_start => '50')
Song.create(:song_id => '8', :song_name => 'sample8', :album_id => number, :artist_id => '8', :lyrics_data => 'sample8', :youtube_id => 'sample', :youtube_start => '50')
Song.create(:song_id => '9', :song_name => 'sample9', :album_id => number, :artist_id => '9', :lyrics_data => 'sample9', :youtube_id => 'sample', :youtube_start => '50')
Song.create(:song_id => '10', :song_name => 'sample10', :album_id => number, :artist_id => '10', :lyrics_data => 'sample10', :youtube_id => 'sample', :youtube_start => '50')

=======
    :youtube_start => 50)

#Song.create(:song_id => '3', :song_name => 'sample3', :album_id => '3', :artist_id => '3', :lyrics_data => 'sample3', :youtube_id => 'sample', :youtube_start => '50')
#Song.create(:song_id => '4', :song_name => 'sample4', :album_id => '4', :artist_id => '4', :lyrics_data => 'sample4', :youtube_id => 'sample', :youtube_start => '50')
#Song.create(:song_id => '5', :song_name => 'sample5', :album_id => '5', :artist_id => '5', :lyrics_data => 'sample5', :youtube_id => 'sample', :youtube_start => '50')
##Song.create(:song_id => '6', :song_name => 'sample6', :album_id => '6', :artist_id => '6', :lyrics_data => 'sample6', :youtube_id => 'sample', :youtube_start => '50')
##Song.create(:song_id => '7', :song_name => 'sample7', :album_id => '7', :artist_id => '7', :lyrics_data => 'sample7', :youtube_id => 'sample', :youtube_start => '50')
#Song.create(:song_id => '8', :song_name => 'sample8', :album_id => '8', :artist_id => '8', :lyrics_data => 'sample8', :youtube_id => 'sample', :youtube_start => '50')
#Song.create(:song_id => '9', :song_name => 'sample9', :album_id => '9', :artist_id => '9', :lyrics_data => 'sample9', :youtube_id => 'sample', :youtube_start => '50')
#Song.create(:song_id => '10', :song_name => 'sample10', :album_id => '10', :artist_id => '10', :lyrics_data => 'sample10', :youtube_id => 'sample', :youtube_start => '50')
>>>>>>> f5ee7d9e2241e0515b7defb2d4997ab42ca686d0
