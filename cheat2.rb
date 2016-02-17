u_suck = true
stop = false
def menu
    puts ""
    puts "CHEATSHEET" 
    puts "1: Command Line"
    puts "2: Search"
    puts "3: Exit"
    puts "*****Select a number*****"
    
end
def menu2
    puts ""
    puts "COMMAND LINE"
    puts "1: cp"
    puts "2: mv"
    puts "3: cd"
    puts "4: main menu"
    choice2 = gets.to_i
      case choice2
        when 1
          puts `man cp`
        when 2 
          puts `man mv`
        when 3 
          puts `man cd`
        else 
          puts ""
      end
end

def search
      print "Search manual for:"
      src = gets.strip.downcase
      puts `man #{src}`
end

while u_suck 
menu
choice = gets.to_i
  case choice
    when 1
      menu2
    when 2
      search
    when 3 
      u_suck = stop
    else
      puts "you suck at this"
  end
end
