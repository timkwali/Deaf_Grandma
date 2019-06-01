puts "Who is there?"
name = gets.chomp

if (name == name.upcase)
  puts "GRANDMA: Welcome #{name}"
end

while (name != name.upcase)
  if (name == name.downcase or name == name.capitalize)
    puts "GRANDMA: HUH?! SPEAK UP!"
    name = ""
  end
  name = gets.chomp
  if (name == name.upcase)
    puts "GRANDMA: Welcome #{name}!"
  end
  
end

puts ""
puts "TALK TO GRANDMA!"
command = gets.chomp
speechMonitor = ""

while (speechMonitor != "BYE"*3 )
  puts "#{name}: #{command}"
  year = rand(1930..1950)

  if (command == "BYE".chomp)
    speechMonitor = speechMonitor + command
  else
    if (command != "BYE".chomp)
      speechMonitor = ""
    end
  end 

  if (command == "BYE".chomp and speechMonitor != "BYE"*3)
    puts "GRANDMA: HUH?!"
  end

  if (command == command.downcase)
    puts "GRANDMA: HUH?! SPEAK UP, #{name}!"
    command = ""
  else
    if (command == command.upcase and speechMonitor != "BYE"*3 and command != "BYE".chomp)
      puts "GRANDMA: NO, NOT SINCE #{year}!"
      command = ""
    end
  end
  
  if (speechMonitor != "BYE"*3)
    command = gets.chomp
  end

  if (speechMonitor == "BYE"*3 )
    puts "GRANDMA: GOODBYE #{name}!"
  end
end
