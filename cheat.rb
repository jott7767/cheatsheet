def command_line_menu
wrong_answer = "You failed to make a proper selection, jackass"
        puts "COMMAND LINE" 
        puts "1: cp"
        puts "2: mv"
        puts "3: cd"
        puts "4: main menu"
        input2 = gets.to_i
            case input2
              when 1
                puts `man cp`
              
              when 2
                puts `man mv`
              
              when 3
                puts `man cd`
              
              when 4
                puts ""
                
              else 
                puts wrong_answer
            end
end

def search  
    print "Search for: "
    src = gets.strip.downcase
    puts `man #{src}`
end

continue = true
while continue
  wrong_answer = "You failed to make a proper selection, jackass"
  puts ""
  puts "CHEATSHEET"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Exit"
  puts "*****Pick One*****"
  input = gets.to_i
  
    case input
      
       when 1 
            command_line_menu
        when 2
            search
        when 3
            continue = false
        
        else
            puts wrong_answer
       
        
    
    end
end      