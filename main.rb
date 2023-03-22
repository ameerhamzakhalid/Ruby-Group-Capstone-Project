def run_first(option)
  case option
  when 1 # list
  when 2 # list
  when 3 # list
  when 4 # list
  when 5 # list
  when 6 # list
  else
    run_second(option)
  end
end

def run_second(option)
  case option
  when 7 # list
  when 8 # Add
  when 9 # Add
  else
    puts 'Command Not Found'
  end
end

def ask_option
  options = [
    'Please select an option by entering the following number:',
    '1. List all books',
    '2. List all music albums',
    '3. List of games',
    '4. List all genres',
    '5. List all labels',
    '6. List all authors',
    '7. List all sources',
    '8. Add a book',
    '9. Add a music album',
    '10. Add a game',
    '11. Exit'
  ]
  puts options
  choice = gets.chomp.to_i
  return puts 'Thank you for using the app' unless choice != 11

  run_first(choice)
  ask_option
end

def main
  puts 'Welcome to the Catalog of my things app'
  ask_option
end

main
