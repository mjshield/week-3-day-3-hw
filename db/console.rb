require('pry-byebug')
require('../model/album')
require('../model/artist')

artist1 = Artist.new( { 'name' => 'Tim' } )
artist1.save()


album1 = Album.new( { 'title' => 'Tims Song', 'genre' => 'Pretentious', 'artist_id' => artist1.id } )
album1.save()
pry_albums = Album.all
return_artists = album1.artist
pry_artists = Artist.all
return_albums = artist1.albums



binding.pry
nil