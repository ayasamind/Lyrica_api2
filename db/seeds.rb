# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.create(:song_id => '1', :song_name => 'sorry', :album_id => '1', :artist_id => '1', :lyrics_data => 'sample', :youtube_id => 'sample', :youtube_start => '50')
Song.create(
    :song_id => '2', 
    :song_name => 'sample', 
    :album_id => '2', 
    :artist_id => '2', 
    :lyrics_data => '{"lines":[{"time":24540,"words":[{"end":26140,"start":24540,"string":"ざわめい"},{"end":26600,"start":26170,"string":"た"},{"end":27530,"start":26630,"string":"街"}]}', 
    :youtube_id => 'sample', 
    :youtube_start => '50')
