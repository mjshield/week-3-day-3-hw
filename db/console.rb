require('pry-byebug')
require('../model/album')
require('../model/artist')

artist1 = Artist.new( { 'name' => 'Tim' } )
artist1.save()
pry_artists = Artist.all

album1 = Album.new( { 'title' => 'Tims Song', 'genre' => 'Pretentious' } )
album1.save()
pry_albums = Album.all




binding.pry
nil