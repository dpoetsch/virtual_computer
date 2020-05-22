movies = {'Titanic': 3, 'Lion Link': 4}

puts "============================="
puts "Choose a option:"
puts "add - to add a new movie"
puts "update - update a movie rating"
puts "display - show all movies"
puts "delete - del a title"

choice = gets.chomp
  case choice
  when "add"
    puts "Add a title movie"
    title = gets.chomp
      if movies[title.to_sym] == nil
        puts "Rating this movie (bad) 0 - 4 (amazing):"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Added #{title} movie"
      else
        puts "#{title} already exists and not add anything to the hash"
      end
  when "update"
      puts "What title you want update?"
      title = gets.chomp
      if movies[title.to_sym] == nil
        puts "Error - Can't find this movie"
      else 
        puts "Whats is the new rating? 0 - 4 (amazing):"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} updated whith rating #{rating}"
        end
  when "display"
      movies.each do |movie,rating|
      puts "#{movie}: #{rating}"
      end
  when "delete"
      puts "What title you need delete?"
      title = gets.chomp
      if movies[title.to_sym] == nil
        puts "Error - Can't find this movie"
      else
        movies.delete(title.to_sym)
      end

  end

  puts movies