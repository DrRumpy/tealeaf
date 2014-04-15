# switch to photo directory
Dir.chdir 'e:/sandbox/temp/album'
# locate all photos to be renamed
pics = Dir['E:/sandbox/temp/photos/*.jpg']

puts 'What would you like to call these photos?'
batch_name = gets.chomp

puts "Renaming #{pics.length} files: "

# counter
pic_number = 1

pics.each do |name|
	print '.' # visual progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  File.rename name, new_name

  pic_number += 1
end