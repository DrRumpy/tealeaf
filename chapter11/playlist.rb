# switch to music diorectory
Dir.chdir 'd:/sandbox/tealeaf/music'

# get the name of all the song files
songs = Dir['*.mp3'].shuffle

filename = 'joshlist.m3u'

File.open filename, 'w' do |line|
	songs.each do |song|
		line.write("#{song}\r")
	end
end