Album.delete_all
Artist.delete_all
Song.delete_all

ar1 = Artist.create(:name => 'Michael Jackson')
ar2 = Artist.create(:name => 'Pearl Jam')
ar3 = Artist.create(:name => 'Radiohead')

al1 = Album.create(:name => 'Thriller', :image => 'thriller.jpg')
al2 = Album.create(:name => 'Ten', :image => 'ten.jpg')
al3 = Album.create(:name => 'kid A', :image => 'kida.jpg')

s1 = Song.create(:name => 'Billy Jean', :position => 1, :filename => 'MichaelJackson_billie_jean.mp3')
s2 = Song.create(:name => 'Thriller', :position => 2, :filename => 'MichaelJackson_thriller.mp3')
s3 = Song.create(:name => 'Everything in its Right Place', :position => 1 , :filename => 'Radiohead_everything_in_its_right_place.mp3')
s4 = Song.create(:name => 'Idioteque', :position => 2, :filename => 'Radiohead_idioteque.mp3')
s5 = Song.create(:name => 'In Limbo', :position => 3, :filename => 'Radiohead_in_limbo.mp3')
s6 = Song.create(:name => 'Lotus Flower', :position => 4, :filename => 'Radiohead_lotus_flower.mp3')
s7 = Song.create(:name => 'The Morning Bell', :position => 5, :filename => 'Radiohead_morning_bell.mp3')
s8 = Song.create(:name => 'Optimistic', :position => 6, :filename => 'Radiohead_optimistic')
s9 = Song.create(:name => 'Alive', :position => 1, :filename => 'PearlJam_alive.mp3')
s10 = Song.create(:name => 'Evenflow', :position => 2, :filename => 'PearlJam_evenflow.mp3')

ar1.albums << al1
ar2.albums << al2
ar3.albums << al3


al1.songs << s1 << s2
al2.songs << s9 << s10
al3.songs = [s3,s4,s5,s6,s7,s8]
