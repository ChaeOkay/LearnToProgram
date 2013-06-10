require_relative '10chpt_shuffle'

#locate txt file to write playlist
#search files for .mp3
#put searched files into array
# shuffle
# write files to txt file

Dir.chdir "11chpt_shuffle"

music = Dir['/Users/chae/DBC_prep/LearnToProgram/11chpt_shuffle/**/*.mp3']

music_shuffled = recursive_shuffle(music, [])

#music.shuffle!

File.open('playlist.txt', 'w+') do |file| 
  music_shuffled.each do |name| 
    file.write name + "\n"
  end
end

