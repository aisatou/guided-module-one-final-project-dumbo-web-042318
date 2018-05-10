class CommandLineInterface

  def run
    greet
    input = gets_user_input
  end

def greet
  puts "Welcome to Invitor, the command line solution go-to for your event-related needs!"
end

  #what could we put here to allow a user to type a response?
def gets_user_input
  puts "Are you planning or attending an event? Enter 1 for planner, enter 2 for guest."
  input = gets.chomp.downcase

  while input != "exit"
    if input == "1"
      puts "What is the name of your event?"
      title = gets.chomp.capitalize
      puts "What city is the event taking place in?"
      location = gets.chomp.capitalize
      puts "What date is your event? Please use this format: MM/DD/YYYY"
      date = gets.chomp
      puts "What is the time of your event? Please use HH:MM PM/AM"
      time = gets.chomp
      datetime = date + " " + time
      datetime2 = DateTime.strptime(datetime, '%m/%d/%Y %I:%M %p')
      event = Event.create(title: title, location: location, datetime: datetime2)
      puts "You made a new event called #{event.title}, and it will be held on #{event.datetime} in #{event.location}.
      Please enter the first name and last name of each guest you want to invite to #{event.title}."


      # arr = []
      # name_input = gets.chomp.capitalize
      # arr << name_input
      # puts "Do you have any more guests you want to invite to your event? (Y/N)"
      # answer = gets.chomp
      # while name_input != "N"
      #   # end or restart
      # if name_input = "Y"
      #   # get name and insert
      #   puts "Please enter their first and last name."
      # elsif name_input != "Y"
      #     puts "Please enter Y or N."
      #   end
      #   # see if they want to add more
      #   # puts "Do you have any more guests you want to invite to your event? (Y/N)"
      #   name_input = gets.chomp
      # end
      #   # get name and insert
      # puts "You have invited #{event.arr}"


      arr = []
      name_input = gets.chomp.capitalize
      arr << name_input
      puts "Do you have any more guests you want to invite to your event? (Y/N)"
      answer = gets.chomp
      while name_input != "N"
        if answer == "Y"
          puts "Please enter their first name and last name."
        elsif
          puts "Please enter Y or N."
        else answer == "N"
          answer = gets.chomp
          puts "Do you have any more guests you want to invite to your event? (Y/N)"
          name_input = gets.chomp
        end
        # get name and insert
      puts "You have invited #{event.arr}"
    end


    # while name_input != "N"
    #   name_input = gets.chomp
    #   puts "Do you have any more guests you want to invite to your event? (Y/N)"
    #     if answer == "Y"
    #     puts "Please enter their first name and last name."
    #   elsif
    #     puts "Please enter Y or N."
    #   else answer == "N"
    #     answer = gets.chomp
    #     # attendees = gets.chomp
    #     end
    #   end
    #   puts "You have invited #{arr}"

    elsif input == "2"
      puts "What is your name?"
       puts "Here is a list of events you've been invited to"
      puts ""
    else
      puts "Please enter 1 or 2."
    end
    input = gets.chomp
  end
end

# Create an event(planner)
# - name of event(title)
# - where will it be held?(location, formatted with city & state)
# - day/time? (datetime)
# - how many people will be attending?
# - return info/confirm to planner

# Check an event near you(guest)
# Choose an event
# RSVP to an event
# Return event info to guest

end
